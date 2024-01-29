#!/bin/bash

set -euo pipefail
IFS=$'\n\t'

echo "--- :hammer: Building static site..."
./tools/hugo/hugo -v -s source/ -d ../dist --baseURL "$BASE_URL"

echo "--- :package: Packaging distributable..."
zip -r9 dist.zip dist
