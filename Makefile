NAME=ga4022helper
PREFIX=/usr/local
SCRIPT=$(PREFIX)/bin/$(NAME)
CONFIG=$(PREFIX)/etc/$(NAME).conf

all: install

install:
	install -Dm 755 ./bin/$(NAME) $(SCRIPT)
	[ -f $(CONFIG) ] || install -Dm 644 ./etc/$(NAME).conf.dist $(CONFIG)

reinstall:
	install -Dm 755 ./bin/$(NAME) $(SCRIPT)
	install -Dm 644 ./etc/$(NAME).conf.dist $(CONFIG)
