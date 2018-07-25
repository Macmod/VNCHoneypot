#!/bin/sh
watch -n 1 'netstat -vatn | grep 5900 | grep ESTABLISHED'
