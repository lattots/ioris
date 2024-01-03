PWD:=$(shell pwd)

build/ioris: src/ioris.go
	GOOS=linux GOARCH=amd64 go build -o build/ioris src/ioris.go

build: build/ioris

start:
	-rm -fR $(PWD)/apache/modules
	ln -sf /usr/lib/apache2/modules $(PWD)/apache/
	SERVER_ROOT=$(PWD) /usr/sbin/apache2 -X -f $(PWD)/apache2.conf
