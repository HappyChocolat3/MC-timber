#!/usr/bin/env bash
# Tworzy ../vein_miner.zip gotowy do wrzucenia do folderu world/datapacks
set -euo pipefail
cd "$(dirname "$0")"
rm -f ../vein_miner.zip
zip -rq ../vein_miner.zip pack.mcmeta data
echo "Utworzono vein_miner.zip"
