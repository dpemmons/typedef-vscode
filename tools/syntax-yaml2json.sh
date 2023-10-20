#!/usr/bin/bash

if [ ! -f ".typedef-vscode-root" ]; then
    echo ".typedef-vscode-root does not exist. Are you running this script from the project root?"
    exit 1
fi

set -xe

npx js-yaml \
  syntaxes/typedef.tmLangauge.yaml \
  > syntaxes/typedef.tmLanguage.json

npx js-yaml \
  syntaxes/typedef-template.tmLanguage.yaml \
  > syntaxes/typedef-template.tmLanguage.json
