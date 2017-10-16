build:
	@sh scripts/build.sh

test:
	@sh scripts/test.sh

bootstrap:
	@swift package generate-xcodeproj
