#!/bin/bash

mkdir -p /mnt/storage/lighthouse && mount /mnt/storage && \
 /usr/local/lighthouse validator --server http://beacon:5052/ --datadir /mnt/storage/lighthouse
