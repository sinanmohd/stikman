PROG=stikman
PREFIX=/usr/local
BINDIR=${PREFIX}/bin
LICENSEDIR=${PREFIX}/share/licenses/stikman

doc:
	mkdir -p ${DESTDIR}${LICENSEDIR}
	chmod 644 LICENSE
	cp LICENSE ${DESTDIR}${LICENSEDIR}

install:
	chmod 755 ${PROG}
	cp ${PROG} ${PROG}.bak
	mkdir -p ${DESTDIR}${BINDIR}
	cp ${PROG}.bak ${DESTDIR}${BINDIR}/${PROG}
	rm ${PROG}.bak

uninstall:
	rm -f ${DESTDIR}${BINDIR}/${PROG}
	rm -rf ${DESTDIR}${LICENSEDIR}

.PHONY: install uninstall doc
