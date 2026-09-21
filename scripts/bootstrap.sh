#!/usr/bin/env bash
set -euo pipefail

echo "== Aurora bootstrap =="

if ! command -v node >/dev/null 2>&1; then
  echo "ERROR: Node.js is required."
  exit 1
fi

echo "Node: $(node --version)"

if [[ -f pnpm-lock.yaml ]]; then
  corepack enable
  pnpm install --frozen-lockfile
elif [[ -f yarn.lock ]]; then
  corepack enable
  yarn install --immutable 2>/dev/null || yarn install --frozen-lockfile
elif [[ -f package-lock.json ]]; then
  npm ci
elif [[ -f bun.lockb || -f bun.lock ]]; then
  if ! command -v bun >/dev/null 2>&1; then
    echo "ERROR: Bun lockfile exists but bun is unavailable."
    exit 1
  fi
  bun install --frozen-lockfile
elif [[ -f package.json ]]; then
  echo "package.json exists without a lockfile."
  echo "For this newly initialized repository, choose and record the package manager"
  echo "in the decision ledger, then create the lockfile intentionally."
  exit 2
else
  echo "No JS manifest yet. Repository is still in architecture-first initialization."
  echo "Codex should complete the repo audit before scaffolding the implementation."
  exit 0
fi

if [[ -f package.json ]]; then
  echo
  echo "== Available project scripts =="
  node - <<'NODE'
const fs = require("fs");
const p = JSON.parse(fs.readFileSync("./package.json", "utf8"));
console.log(JSON.stringify(p.scripts || {}, null, 2));
NODE
fi

echo
echo "Bootstrap complete."
