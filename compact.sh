#!/bin/sh
jq -c . antennas.json > tmp.json && mv tmp.json antennas.json
