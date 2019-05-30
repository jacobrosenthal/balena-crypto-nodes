#!/bin/bash

ARGS=""

[ "$BALENAENV_HSD_COINBASE" ] && ARGS+=" --coinbase '$BALENAENV_HSD_COINBASE'"

mkdir -p /mnt/storage && mount /mnt/storage && \
	/usr/src/app/hsd/bin/hsd --prefix /mnt/storage/hns --log-level info $ARGS \
		--http-host 0.0.0.0 --no-auth \
		--wallet-http-host=0.0.0.0 --wallet-no-auth \
