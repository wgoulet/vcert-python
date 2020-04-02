#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

bandit -r vcert/
safety check
py.test -v