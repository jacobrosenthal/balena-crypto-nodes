#!/bin/bash

ARGS=""

[ "$BALENAENV_CORS" ] && ARGS+=" --rpccorsdomain $BALENAENV_CORS"

mkdir -p /mnt/storage/geth && mount /mnt/storage && \
 /usr/local/geth --ws --wsaddr "0.0.0.0" --wsorigins "*" --rpc --rpcaddr "0.0.0.0" --rpcvhosts "*" --datadir /mnt/storage/geth $ARGS
