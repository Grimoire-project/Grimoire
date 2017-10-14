test:
	@set -o pipefail
	@swift test 2>&1 | xcpretty -t
