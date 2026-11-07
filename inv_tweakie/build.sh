#!/usr/bin/env bash
# Tworzy ../inv_tweakie.zip gotowy do wrzucenia do folderu world/datapacks
set -euo pipefail
cd "$(dirname "$0")"
rm -f ../inv_tweakie.zip
zip -rq ../inv_tweakie.zip pack.mcmeta data
echo "Utworzono inv_tweakie.zip"
