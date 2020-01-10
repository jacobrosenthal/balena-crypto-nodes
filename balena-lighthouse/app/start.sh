#!/bin/bash

ARGS=""

[ "$BALENAENV_LIGHTHOUSE_LOGS" ] && ARGS+=" --debug-level $BALENAENV_LIGHTHOUSE_LOGS"

mkdir -p /mnt/storage/lighthouse && mount /mnt/storage && \
 /usr/local/lighthouse $ARGS --datadir /mnt/storage/lighthouse bn \
 --http --http-address "0.0.0.0" --ws \
 --eth1 --eth1-endpoint "https://$BALENAENV_LIGHTHOUSE_INFURA"
