#!/bin/bash
for i in $(seq 1 3); do seq 11 61 | xargs -P 0 -I {} ping -c 1 -W 1 192.168.15$i.{} | grep 'bytes from'; done
