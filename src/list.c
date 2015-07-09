#include <stdlib.h>
#include <stdio.h>
#include "list.h"

/* Design consideration only this file should know about nodes */
/* Only this file should be manipulating nodes */
typedef struct lnode
{
	struct lnode* prev; /* Pointer to previous node */
	struct lnode* next; /* Pointer to next node */
	void* data; /* User data */
} node;

/* Do not create any global variables here. Your linked list library should obviously work for multiple linked lists */
static node* create_node(void* data);

/** create_node
 *
 * Helper function that creates a node by allocating memory for it on the heap.
 * Be sure to set its pointers to NULL.
 *
 * @param data a void pointer to data the user wants to store in the list
 * @return a node
 */
static node* create_node(void* data)
{
	node* n;
	if (!(n = malloc(sizeof(node)))) return NULL;
	n->data = data;
	n->next = NULL;
	n->prev = NULL;

	return n;
}

/** create_list
 *
 * Creates a list by allocating memory for it on the heap.
 * Be sure to initialize size to zero and head/tail to NULL.
 *
 * @return an empty linked list
 */
list* create_list(void)
{
	list* l;
	if (!(l = malloc(sizeof(list)))) return NULL;
	l->head = NULL;
	l->tail = NULL;
	l->size = 0;

	return l;
}

/** push_front
 *
 * Adds the data to the front of the linked list
 *
 * @param llist a pointer to the list.
 * @param data pointer to data the user wants to store in the list.
 */
void push_front(list* llist, void* data)
{
	node* n = create_node(data);
	if (!n)
	{
		// error in allocating memory on heap
		fprintf(stderr, "error in memory allocation in file %s at line %d", __FILE__, __LINE__);
	}

	if (llist->size)
	{
		// list is not empty
		n->next = llist->head;
		llist->head->prev = n;
		llist->head = n;
	}
	else
	{
		// list is empty
		llist->head = n;
		llist->tail = n;
	}
	++(llist->size);
}

/** push_back
 *
 * Adds the data to the back/end of the linked list
 *
 * @param llist a pointer to the list.
 * @param data pointer to data the user wants to store in the list.
 */
void push_back(list* llist, void* data)
{
	node* n = create_node(data);
	if (!n)
	{	
		// error in allocating memory on heap
		fprintf(stderr, "error in memory allocation in file %s at line %d", __FILE__, __LINE__);
	}

	if (llist->size)
	{
		// list is not empty
		n->prev = llist->tail;
		llist->tail->next = n;
		llist->tail = n;
	}
	else
	{
		// list is empty
		llist->head = n;
		llist->tail = n;
	}
	++(llist->size);
}

/** remove_front
 *
 * Removes the node at the front of the linked list
 *
 * @warning Note the data the node is pointing to is also freed. If you have any pointers to this node's data it will be freed!
 *
 * @param llist a pointer to the list.
 * @param free_func pointer to a function that is responsible for freeing the node's data.
 * @return -1 if the remove failed (which is only there are no elements) 0 if the remove succeeded.
 */
int remove_front(list* llist, list_op free_func)
{
	node* oldHead = llist->head;
	node* newHead = oldHead->next;

	newHead->prev = NULL;
	llist->head = newHead;

	// free node
	free_func(oldHead->data);
	free(oldHead);

	/// @todo Implement
	/// @note remember to also free the node itself
	/// @note free_func is a function that is responsible for freeing the node's data only.
	return -1;
}

/** remove_back
 *
 * Removes the node at the back of the linked list
 *
 * @warning Note the data the node is pointing to is also freed. If you have any pointers to this node's data it will be freed!
 *
 * @param llist a pointer to the list.
 * @param free_func pointer to a function that is responsible for freeing the node's data.
 * @return -1 if the remove failed 0 if the remove succeeded.
 */
int remove_back(list* llist, list_op free_func)
{
	/// @todo Implement
	/// @note Remember to also free the node itself
	/// @note free_func is a function that is responsible for freeing the node's data only.
	return -1;
}

/** copy_list
 *
 * Create a new list structure, new nodes, and new copies of the data by using
 * the copy function. Its implementation for any test structure must copy
 * EVERYTHING!
 *
 * @param llist A pointer to the linked list to make a copy of
 * @param copy_func A function pointer to a function that makes a copy of the
 *        data that's being used in this linked list, allocating space for
 *        every part of that data on the heap
 * @return The linked list created by copying the old one
 */
list* copy_list(list* llist, list_cpy copy_func)
{
	/// @todo implement
	return NULL;
}

/** front
 *
 * Gets the data at the front of the linked list
 * If the list is empty return NULL.
 *
 * @param llist a pointer to the list
 * @return The data at the first node in the linked list or NULL.
 */
void* front(list* llist)
{
	if (is_empty(llist))
		return NULL;
	else
		return llist->head->data;
}

/** back
 *
 * Gets the data at the "end" of the linked list
 * If the list is empty return NULL.
 *
 * @param llist a pointer to the list
 * @return The data at the last node in the linked list or NULL.
 */
void* back(list* llist)
{
	if (is_empty(llist))
		return NULL;
	else
		return llist->tail->data;
}

/** size
 *
 * Gets the size of the linked list
 *
 * @param llist a pointer to the list
 * @return The size of the linked list
 */
int size(list* llist)
{
	return llist->size;
}

/** traverse
 *
 * Traverses the linked list calling a function on each node's data.
 *
 * @param llist a pointer to a linked list.
 * @param do_func a function that does something to each node's data.
 */
void traverse(list* llist, list_op do_func)
{
	node* tmp = llist->head;
	while(tmp != NULL)
	{
		do_func(tmp->data);
		tmp = tmp->next;
	}
}

void traverse_skip(list* llist, list_op do_func, int step)
{
	int i = step;
	node* tmp = llist->head;
	while(tmp != NULL)
	{
		if (i == step)
		{
			do_func(tmp->data);
			i=0;
		}
		tmp = tmp->next;
		i++;
	}
}

/** remove_if
 *
 * Removes all nodes whose data when passed into the predicate function returns true
 *
 * @param llist a pointer to the list
 * @param pred_func a pointer to a function that when it returns true it will remove the element from the list and do nothing otherwise @see list_pred.
 * @param free_func a pointer to a function that is responsible for freeing the node's data
 * @return the number of nodes that were removed.
 */
int remove_if(list* llist, list_pred pred_func, list_op free_func)
{
	/// @todo Implement changing the return value!
	/// @note remember to also free all nodes you remove.
	/// @note be sure to call pred_func on the NODES DATA to check if the node needs to be removed.
	/// @note free_func is a function that is responsible for freeing the node's data only.
	return 0;
}

/** is_empty
 *
 * Checks to see if the list is empty.
 *
 * @param llist a pointer to the list
 * @return 1 if the list is indeed empty 0 otherwise.
 */
int is_empty(list* llist)
{
	if (llist->size == 0 && llist->head == NULL)
		return 1;
	else
		return 0;
}

/** empty_list
 *
 * Empties the list after this is called the list should be empty.
 *
 * @param llist a pointer to a linked list.
 * @param free_func function used to free the node's data.
 *
 */
void empty_list(list* llist, list_op free_func)
{
	node* tmp = llist->head;
	node* tmp2;
	while(tmp != NULL)
	{
		tmp2 = tmp->next;
		free_func(tmp->data);
		free(tmp);
		tmp = tmp2;
	}
	llist->head = NULL;
	llist->tail = NULL;
}
