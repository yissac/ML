#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "list.h"

#define MEASUREMENTS_PER_HOUR 4
#define START_TIME 12
#define END_TIME 22

typedef enum { false, true } bool;
typedef struct Day
{
	int nom; /* number of measurements */
	double* measurements; /* measurements */
	char** time;
	char* day;
} Day;

void free_day(void*);
void print_day(void*);
void plot(void*);
void plot_hold(void* d);

int main(int argc, char** argv)
{
	// Open File
	FILE* fp = fopen("data/531.10384","r");
	if (fp == NULL)
	{
		fprintf(stderr,"cannot open file for reading");
		exit(EXIT_FAILURE);
	}

	// Create Linked List
	list* linkedlist = create_list();

	// Put Data in Linked List
	Day* d;
	int i;
	bool contiguous = 0;
	int dayRequiredInt = 0;
	int mnom = MEASUREMENTS_PER_HOUR*(END_TIME-START_TIME); // maximum number of measurements
	double valueBuffer[mnom];
	char* timestampPrev = malloc(sizeof(char)*11);

	char** timeBuffer = malloc(sizeof(char*)*mnom);
	for (int j=0; j<mnom; j++)
	{
		timeBuffer[j] = malloc(sizeof(char)*9);
		timeBuffer[j][8] = '\0';
	}
	char* buffer = malloc(sizeof(char)*1024);

	while(fgets(buffer,1024,fp) != NULL)
	{
		// Get Hour of the Day as Integer
		char* timestamp = strtok(buffer,"\t\n");
		char dayStr[3];
		char hourStr[3];
		memcpy(hourStr,timestamp+11,2);
		memcpy(dayStr,timestamp+8,2);
		dayStr[2] = '\0';
		hourStr[2] = '\0';
		int dayInt = strtod(dayStr,NULL);
		int hourInt = strtod(hourStr,NULL);

		if (dayInt == dayRequiredInt)
		{
			if ( START_TIME <= hourInt && hourInt < END_TIME )
			{
				if (!contiguous)
				{
					// New Day Measurements Start
					contiguous = 1;
					i = 0;
				}
				valueBuffer[i] = strtod(strtok(NULL,"\t\n"),NULL);
				memcpy(timeBuffer[i],timestamp+11,8);
				i++;
			}
		}
		else
		{
			// store previous day into linked list
			if (contiguous)
			{
				contiguous = 0;
				d = malloc(sizeof(Day));
				push_back(linkedlist,d);
				d->nom = i;
				d->measurements = malloc(sizeof(double)*i);
				d->time = malloc(sizeof(char*)*i);
				d->day = malloc(sizeof(char)*11);
				memcpy(d->measurements,valueBuffer,sizeof(double)*i);
				memcpy(d->day,timestampPrev,10);
				d->day[10] = '\0';
				for (int j=0; j<i; j++)
				{
					d->time[j] = malloc(sizeof(char)*8);
					memcpy(d->time[j],timeBuffer[j],8);
				}
			}

			dayRequiredInt = dayInt;
			memcpy(timestampPrev,timestamp,10);
			timestampPrev[10] = '\0';
		}
	}

	//traverse(linkedlist,print_day);
	plot(front(linkedlist));
	//traverse(linkedlist,plot);
	traverse_skip(linkedlist,plot,15);
	//traverse_skip(linkedlist,plot_hold,30);

	free(timestampPrev);
	free(buffer);
	for (int j=0; j<mnom; j++)
		free(timeBuffer[j]);
	free(timeBuffer);
	empty_list(linkedlist,free_day);
	free(linkedlist);

	return 0;
}

void free_day(void* data)
{
	free(((Day*)data)->measurements);
	free(((Day*)data)->day);
	for (int i=0; i<((Day*)data)->nom; i++)
		free(((Day*)data)->time[i]);
	free(data);
}

void print_day(void* d)
{
	fprintf(stdout,"%d relevant measurements for %s\n",((Day*)d)->nom,((Day*)d)->day);
	for (int i=0; i<((Day*)d)->nom; i++)
	{
		fprintf(stdout,"%s\t%f\n",((Day*)d)->time[i],((Day*)d)->measurements[i]);
	}
}

void plot(void* d)
{
	static FILE* gp = NULL;
	if (!gp)
		gp = popen("gnuplot -persist","w");
	if (!gp)
	{
		fprintf(stderr,"Could not open Gnuplot.\n");
		return;
	}

	fprintf(gp,"reset;\nset timefmt \"%H:%M:%%S\"\nset xdata time\nunset key\nset grid\nset title \"%s\nset xlabel \"Time UTC\"\nset ylabel \"Cooling Flow (GPM)\"\nset yrange [400:1400]\nplot '-' using 1:2\n",((Day*)d)->day);
	for (int i=0; i<((Day*)d)->nom; i++)
	{
		fprintf(gp,"%s %lf\n",((Day*)d)->time[i],((Day*)d)->measurements[i]);
	}
	fprintf(gp,"e\n");
	fflush(gp);
	usleep(1000000);
	//close(gp);
	//getchar();
}

void plot_hold(void* d)
{
	static FILE* gp = NULL;
	if (!gp)
		gp = popen("gnuplot -persist","w");
	if (!gp)
	{
		fprintf(stderr,"Could not open Gnuplot.\n");
		return;
	}

	fprintf(gp,"set timefmt \"%H:%M:%%S\"\nset xdata time\nset title \"%s\nset ylabel \"Cooling Flow (GPM)\"\nset multiplot\nset yrange [400:1400]\nreplot '-' using 1:2\n",((Day*)d)->day);
	for (int i=0; i<((Day*)d)->nom; i++)
	{
		fprintf(gp,"%s %lf\n",((Day*)d)->time[i],((Day*)d)->measurements[i]);
	}
	fprintf(gp,"e\n");
	fflush(gp);
}
