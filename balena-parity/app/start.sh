#!/bin/bash

mkdir -p /mnt/storage && mount /mnt/storage && \
	/usr/local/parity --base-path /mnt/storage \
		--unsafe-expose --no-download --pruning "fast" --pruning-memory 16  --pruning-history 16 --cache-size 16
