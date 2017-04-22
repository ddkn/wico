PREFIX?=/usr/local
BIN=wico

install: all
	cp $(BIN) $(PREFIX)/bin/
	cp man/wico.1 $(PREFIX)/man/man1/
	cp man/wico.conf.5 $(PREFIX)/man/man5/
	mkdir -p $(PREFIX)/share/examples/wico
	cp wico.conf.sample $(PREFIX)/share/examples/wico/wico.conf

