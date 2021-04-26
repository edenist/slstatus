# slstatus version
VERSION = 0

# customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = $(PREFIX)/share/man

X11INC = /usr/local/include
X11LIB = /usr/local/lib

# flags
CPPFLAGS = -I$(X11INC) -D_DEFAULT_SOURCE 
CFLAGS   = -std=c99 -pedantic -Wall -Wextra -Os
LDFLAGS  = -L$(X11LIB) -g -L/usr/lib -lc -L/usr/local/lib
LDLIBS   = -lX11 -lglib-2.0 -lnotify -lgdk_pixbuf-2.0 -lgobject-2.0 -lintl

# flags for new notification functions
EXTRA_INC = -I/usr/local/include/gdk-pixbuf-2.0 -I/usr/local/include -I/usr/local/include/glib-2.0 -I/usr/local/lib/glib-2.0/include
EXTRA_FLAGS = 
# compiler and linker
CC = cc
