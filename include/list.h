#ifndef LIST_H
#define LIST_H

struct lnode;

/* The linked list struct. Has head and tail pointers */
typedef struct llist
{
	struct lnode* head; /* Either points to a node with data or NULL */
	struct lnode* tail; /* Either points to a node with data or NULL */
	unsigned int size; /* Size of linked list */
} list;

typedef void (*list_op)(void*);
typedef int (*list_pred)(const void*);
typedef void* (*list_cpy)(const void*);

/* Creating */
list* create_list(void);
list* copy_list(list* llist, list_cpy copy_func);

/* Adding */
void push_front(list* llist, void* data);
void push_back(list* llist, void* data);

/* Removing */
int remove_front(list* llist, list_op free_func);
int remove_back(list* llist, list_op free_func);
int remove_if(list* llist, list_pred pred_func, list_op free_func);

/* Querying List */
void* front(list* llist);
void* back(list* llist);
int is_empty(list* llist);
int size(list* llist);

/* Freeing */
void empty_list(list* llist, list_op free_func);

/* Traversal */
void traverse(list* llist, list_op do_func);

#endif
