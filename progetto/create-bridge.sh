#!/usr/bin/bash

set -euo pipefail

sudo ip link add switch1 type bridge 
sudo ip link set switch1 up