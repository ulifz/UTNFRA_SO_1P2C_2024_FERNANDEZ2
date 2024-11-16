#!/bin/bash
for i in 1 2 3 5 6 7 8 9 10 11; do
	sudo mkfs -t ext4 /dev/sdb$i
done
