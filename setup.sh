#!/bin/bash

set -eu

cd $(dirname $0)

for x in IATI-Data-Quality IATI-Implementation-Schedules
do
	git clone git://github:pwyf/${x}.git	
done
