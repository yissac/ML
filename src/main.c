#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include "list.h"

#define MEASUREMENTS_PER_HOUR 4
#define START_TIME 8
#define END_TIME 20

typedef struct Day
{
	int nom; /* number of measurements */
	double* measurements; /* measurements */
} Day;

void free_day(void*);
void print_day(void*);

int main(int argc, char** argv)
{
	FILE* fp = fopen("data/921.10759","r");
	if (fp == NULL)
	{
		fprintf(stderr,"cannot open file for reading");
		exit(EXIT_FAILURE);
	}

	list* linkedlist = create_list();
	Day* d = malloc(sizeof(Day));

	int i=0;
	int k=0;
	int mnom = MEASUREMENTS_PER_HOUR*(END_TIME-START_TIME); // maximum number of measurements
	char* buffer = malloc(sizeof(char)*1024);
	double valueBuffer[mnom];
	while(fgets(buffer,1024,fp) != NULL)
	{
		char* timestamp = strtok(buffer,"\t\n");

		if (i == 9)
		{
			i = 0;
			d = malloc(sizeof(Day));
			push_front(linkedlist,d);
			d->measurements = malloc(sizeof(double)*mnom);
		}

		timestamp = "H";
		double value = strtod(strtok(NULL,"\t\n"),NULL);
		valueBuffer[i] = value;
		//d->measurements[i] = value;     // <--- for some reason this is causing segmentation fault
		i++;
		k++;
		if (k == 99) break;
	}


	traverse(linkedlist,print_day);
	printf("%d\n",size(linkedlist));


	return 0;
}

void free_day(void* data)
{
	free(((Day*)data)->measurements);
	free(data);
}

void print_day(void* day)
{
	fprintf(stdout,"Number of Measurements: %d\t",((Day*)day)->nom);
	fprintf(stdout,"Measurement: %f\n",((Day*)day)->measurements[0]);
}
