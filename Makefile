###############################################################################
# Makefile for building project
###############################################################################

# Custom commands
PROGNAME 	= build/ML
CC		= gcc
SRCEXT 		= c
HDREXT 		= h

#######################################
# Do Not edit
#######################################

MAKEFILE 	= Makefile
#CFLAGS 		= -Wall -Werror -std=c99 -pedantic
CFLAGS 		= -std=c99
CDEBUG 		= -ggdb -DDEBUG
CRELEASE 	= -O3

###### Directories

SOURCES_DIR 	= src
HEADERS_DIR 	= include
OBJECTS_DIR 	= build

###### Object files, source files

#OBJS 		= main.o gear.o
#SRCS 		= $(SOURCES_DIR)/$(OBJS:.o=.$(SRCEXT))
#HDRS 		= $(HEADERS_DIR)/$(OBJS:.o=.$(HDREXT))

# Append dir to beg of filenames
#_DEPS = hellomake.h
#DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))

# the following finds all c-files in the src directory
SRCS := $(shell find $(SOURCES_DIR) -type f -name *.$(SRCEXT))
OBJS := $(patsubst $(SOURCES_DIR)/%,$(OBJECTS_DIR)/%,$(SRCS:.$(SRCEXT)=.o))

######
$(PROGNAME) : $(OBJS)
	$(CC) $^ -o $(PROGNAME)

$(OBJECTS_DIR)/%.o : $(SOURCES_DIR)/%.$(SRCEXT)
	$(CC) $(CFLAGS) $(CRELEASE) -I$(HEADERS_DIR) -c -o $@ $<

.PHONY : debug clean srcfiles

debug : CFLAGS += $(CDEBUG)
debug: $(PROGNAME)

clean :
	rm $(PROGNAME) $(OBJS)

srcfiles :
	echo $(SRCS)
