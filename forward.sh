#!/bin/sh
vm=$1
socat -lh -lu tcp-listen:5900,reuseaddr,fork tcp:$vm:5900
