#!/bin/bash

if [ "$BALENAENV_MESH_LOGS" ]; then export VERBOSITY=$BALENAENV_MESH_LOGS; fi

export DATA_DIR=/mnt/storage/0x_mesh/
export RPC_ADDR=0.0.0.0:60557
export P2P_TCP_PORT=60558
export P2P_WEBSOCKETS_PORT=60559
export ETHEREUM_RPC_URL=http://geth:8545
export ETHEREUM_CHAIN_ID=1

mkdir -p /mnt/storage/0x_mesh && mount /mnt/storage && /usr/local/mesh
