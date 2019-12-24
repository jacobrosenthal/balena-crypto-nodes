#!/bin/bash

ARGS=""

[ "$BALENAENV_CORS" ] && ARGS+=" --rpccorsdomain $BALENAENV_CORS"
[ "$BALENAENV_GETH_VERBOSITY" ] && ARGS+=" --verbosity $BALENAENV_GETH_VERBOSITY"

mkdir -p /mnt/storage/geth && mount /mnt/storage && \
 /usr/local/geth --syncmode light --cache 256 --ws --wsaddr "0.0.0.0" --wsorigins "*" --rpc --rpcaddr "0.0.0.0" --rpcvhosts "*" --datadir /mnt/storage/geth $ARGS
