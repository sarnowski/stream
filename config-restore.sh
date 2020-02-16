#!/bin/sh

cd $(dirname $0)

rsync   --verbose \
	--human-readable \
	--recursive \
	--perms \
	--executability \
	--acls \
	--xattrs \
	--owner \
	--group \
	--times \
	./saved/ /
