#!/bin/sh
tshark -r $1 -Tfields -e ip.src | sort | uniq -c | sort -nr
