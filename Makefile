RELEASE = ./css/debug.css
RELEASE_MIN = ./css/debug.min.css
BUILD_STYL = ./build.styl
STYLUS_PROCESSOR ?= `which stylus`

build:
	@@if test ! -z ${STYLUS_PROCESSOR}; then \
		stylus < ${BUILD_STYL} > ${RELEASE}; \
		stylus --compress < ${BUILD_STYL} > ${RELEASE_MIN}; \
		echo "done"; \
	else \
		echo "You must have the stylus compiler installed in order to build."; \
		echo "You can install it by running: npm install stylus -g"; \
	fi
