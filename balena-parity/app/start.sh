#!/bin/bash

ARGS=""

[ "$BALENAENV_PARITY_CORS" ] && ARGS+=" --jsonrpc-cors $BALENAENV_PARITY_CORS"

mkdir -p /mnt/storage && mount /mnt/storage && \
	/usr/local/parity --base-path /mnt/storage \
		--pruning "fast" --pruning-memory 16 --pruning-history 16 --cache-size 32 \
		--unsafe-expose --no-download $ARGS
