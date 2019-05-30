#!/bin/bash

mkdir -p /mnt/storage && mount /mnt/storage && \
	/usr/src/app/hsd/bin/hsd --prefix /mnt/storage/hns --http-host 0.0.0.0
