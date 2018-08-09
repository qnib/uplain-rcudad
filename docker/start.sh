#!/bin/bash

export LD_LIBRARY_PATH=/usr/local/cuda-8.0/targets/x86_64-linux/lib/
cd /usr/local/rcuda/bin
echo "> Start go-rcudad v0.1.1"
/usr/local/bin/go-rcudad -listen-address 0.0.0.0:${RCUDA_PROM_PORT}
