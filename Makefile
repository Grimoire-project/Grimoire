PREFIX?=/usr/local
CP=cp
MKDIR=mkdir

build:
	@sh scripts/build.sh

test:
	@sh scripts/test.sh

build_release:
	CONFIGURATION=release ./scripts/build.sh

install: build_release
	-$(MKDIR) "$(PREFIX)/bin"
	$(CP) -f ./.build/release/grimoire "$(PREFIX)/bin/"
