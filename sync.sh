#!/bin/bash

git restore .DS_Store 2>/dev/null

if git diff --quiet && git diff --cached --quiet; then
  echo "Nenhuma alteração para enviar."
  exit 0
fi

git add .
git commit -m "Atualiza projeto - VSCode"
git push