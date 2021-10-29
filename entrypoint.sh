#!/bin/bash
set -e # sets shell option; exit immediately for non-zero exit status

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Then exec the container's main process (that's set as CMD in the Dockerfile).
exec "$@"


