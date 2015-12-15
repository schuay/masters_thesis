#!/bin/bash

for host in mars saturn ceres; do
    lstopo \
        --input lstopo_${host}.xml \
        --no-io \
        --no-bridges \
        --restrict $(hwloc-calc --input lstopo_${host}.xml package:0) \
        --ignore PU \
        lstopo_${host}.pdf
done