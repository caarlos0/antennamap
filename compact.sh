#!/bin/sh
set -e
tmp=$(mktemp) || exit 1
trap 'rm -f "$tmp"' EXIT
jq -c . antennas.json >"$tmp" && mv "$tmp" antennas.json
jq -c . population.json >"$tmp" && mv "$tmp" population.json
