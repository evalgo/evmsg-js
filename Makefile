.PHONY: all
all: build

build:
	mkdir evmsg-js
	cp -rf js evmsg-js/
	tar cfvz evmsg-js.tar.gz evmsg-js
	rm -rf evmsg-js

.PHONY: install
install:
	go install

.PHONY: clean 
clean:
	rm -fv *.tar.gz
	find . -name "*~" | xargs rm -fv