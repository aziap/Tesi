#!/usr/bin/env bash

set -euo pipefail

docker run --rm -it \
  -v "$(pwd):/opt/work" \
  prom/snmp-generator:v0.30.1 \
  generate \
	  --log.level=debug \
	  -m /opt/work/mibs \
	  -g /opt/work/generator.yml \
	  -o /opt/work/snmp.yml