#!/bin/bash

[ "$BALENAENV_LIGHTHOUSE_VALIDATOR_LOGS" ] && ARGS+=" --debug-level $BALENAENV_LIGHTHOUSE_VALIDATOR_LOGS"

mkdir -p /mnt/storage/lighthouse && mount /mnt/storage && \
 /usr/local/lighthouse $ARGS --datadir /mnt/storage/lighthouse vc --server http://beacon:5052/ testnet insecure 0 8
