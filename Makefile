PREFIX?=/usr/local
CP=cp
MKDIR=mkdir

build:
	@sh scripts/build.sh

test:
	@sh scripts/test.sh

swiftpm:
	CONFIGURATION=release ./scripts/build.sh

swiftpm_install: swiftpm
	-$(MKDIR) "$(PREFIX)/bin"
	$(CP) -f ./.build/release/grimoire "$(PREFIX)/bin/"
