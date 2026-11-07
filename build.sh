#!/usr/bin/env bash
# Tworzy MC-Timber.zip gotowy do wrzucenia do folderu world/datapacks
set -euo pipefail
cd "$(dirname "$0")"
rm -f MC-Timber.zip
zip -rq MC-Timber.zip pack.mcmeta data
echo "Utworzono MC-Timber.zip"
