
# Custom Hardware

If you are building your project to target custom hardware, which does not have
support in libmaple proper ("in tree" support), you can put your libmaple and
Wirish port files here ("out of tree" support, instead of, eg, forking
libmaple).

At a minimum, you'll need a .mk Makefile in this directory (named after the
BOARD, eg "your-board-mini.mk) for libmaple, and wirish/board.cpp and
wirish/include/board/board.h (these are the literal file names, don't use
wirish/your-board-mini.cpp or something like that) for Wirish support.

The example file included here is named "acme_dust", and is really just a direct clone of the LeafLabs Maple Mini.
