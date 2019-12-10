#!/bin/bash

ARGS=""

# [ "$BALENAENV_PARITY_CORS" ] && ARGS+=" --jsonrpc-cors $BALENAENV_PARITY_CORS"

mkdir -p /mnt/storage/lighthouse && mount /mnt/storage && \
 /usr/local/lighthouse bn --datadir /mnt/storage/lighthouse --http --http-address "0.0.0.0" --ws $ARGS
