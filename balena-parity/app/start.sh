#!/bin/bash

mkdir -p /mnt/storage && mount /mnt/storage
/usr/local/parity --base-path /mnt/storage --unsafe-expose --no-download
