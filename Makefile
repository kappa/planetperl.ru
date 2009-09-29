PREFIX?= /site/planetperl.ru/www

INSTALL=	cp -f	

main:
	@echo "No default target, sorry"

static::
	@${INSTALL} static/*.css ${PREFIX}
	@${INSTALL} static/*.png ${PREFIX}
	@${INSTALL} static/*.gif ${PREFIX}
	@${INSTALL} static/favicon.ico ${PREFIX}
