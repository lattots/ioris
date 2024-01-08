.PHONY=static_files

PWD:=$(shell pwd)
HTTPD_STATIC_FILES_NORMAL:=$(wildcard src/html/*)
HTTPD_STATIC_FILES_DOT:=$(wildcard src/html/.??*)
HTTPD_STATIC_FILES:=$(HTTPD_STATIC_FILES_NORMAL) $(HTTPD_STATIC_FILES_DOT)

static_files: $(HTTPD_STATIC_FILES)
	for this_file in $(HTTPD_STATIC_FILES:src/html/%=%); do \
		cp src/html/$${this_file} build/ ; \
	done

build/ioris: src/ioris.go
	GOOS=linux GOARCH=amd64 go build -o build/ioris src/ioris.go

build: build/ioris static_files

start:
	-rm -fR $(PWD)/apache/modules
	ln -sf /usr/lib/apache2/modules $(PWD)/apache/
	SERVER_ROOT=$(PWD) /usr/sbin/apache2 -X -f $(PWD)/apache2.conf
