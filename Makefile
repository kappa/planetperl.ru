PREFIX?= /site/planetperl.ru/www

main:
	@echo "No default target, sorry"

static:
	@ln -s static/*.css ${PREFIX}
	@ln -s static/*.png ${PREFIX}
	@ln -s static/*.gif ${PREFIX}
	@ln -s static/favicon.ico ${PREFIX}
