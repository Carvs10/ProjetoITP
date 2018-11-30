all:
	gcc imagem.c -c `pkg-config gtk+-3.0 --cflags --libs` -ggdb
	gcc meufiltro.c -c `pkg-config gtk+-3.0 --cflags --libs` -ggdb
	gcc filtroGtk.c `pkg-config gtk+-3.0 --cflags --libs` meufiltro.o imagem.o -lm -ggdb
