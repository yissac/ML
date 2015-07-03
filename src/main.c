#include <stdlib.h>
#include <stdio.h>
#include "list.h"

typedef struct Day
{
	int nom; /* Number of measurements */
	double* measurements;
} Day;

void free_day(void*);
void print_day(void*);

int main(int argc, char** argv)
{
	Day* d = malloc(sizeof(Day));
	d->measurements = malloc(sizeof(double)*24);

	list* linkedlist = create_list();
	push_front(linkedlist,d);
	traverse(linkedlist,print_day);

	return 0;
}

void free_day(void* data)
{
	free(((Day*)data)->measurements);
	free(data);
}

void print_day(void* day)
{
	fprintf(stdout,"Number of Measurements: %d\n",((Day*)day)->nom);
}
