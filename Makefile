.PHONY: all src/* test/*

all: src/bufferutils.js test/bufferutils.js

src/bufferutils.js:
	./node_modules/.bin/tsc \
		--removeComments false \
		--target es6 \
		--outDir src \
		./ts_src/bufferutils.ts
	git add -f $@

test/bufferutils.js:
	./node_modules/.bin/tsc \
		--removeComments false \
		--target es6 \
		./test/bufferutils.spec.ts
	mv ./test/bufferutils.spec.js $@
	git add -f $@

