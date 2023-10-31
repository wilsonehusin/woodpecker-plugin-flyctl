#!/usr/bin/env sh

set -e

: ${PLUGIN_ARGS:="deploy ."}

set -u

: ${FLY_API_TOKEN}

set -x

flyctl ${PLUGIN_ARGS}
