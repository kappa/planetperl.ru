PREFIX?= /site/planetperl.ru/www

INSTALL=	cp -fp
LNS=		ln -s

main:
	@echo "No default target, sorry"

static::
	@${INSTALL} static/*.css ${PREFIX}
	@${INSTALL} static/*.png ${PREFIX}
	@${INSTALL} static/*.gif ${PREFIX}
	@${INSTALL} static/favicon.ico ${PREFIX}

symlinks::
	@${LNS} ${CURDIR}/index.html ${PREFIX}
	@${LNS} ${CURDIR}/cse_links.html ${PREFIX}
	@${LNS} ${CURDIR}/atom.xml ${PREFIX}
	@${LNS} ${CURDIR}/planetperlru.opml ${PREFIX}

nginx:
	@${LNS} ${CURDIR}/nginx.conf /etc/nginx/sites-enabled/planetperl.ru

force::
	perl -I ../perlanet/lib ../perlanet/bin/perlanet
