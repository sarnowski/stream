#!/bin/sh

cd $(dirname $0)

rsync   --verbose \
	--human-readable \
	--recursive \
	--copy-links \
	--delete \
	--perms \
	--executability \
	--acls \
	--xattrs \
	--owner \
	--group \
	--times \
	--include-from=config-includes \
	--exclude-from=config-excludes \
	/ ./saved/




