#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v zig >/dev/null 2>&1; then
  echo "Zig is not installed or is not on PATH."
  echo "Install it from https://ziglang.org/download/ and try again."
  exit 1
fi

export ZIG_GLOBAL_CACHE_DIR="$ROOT_DIR/.zig-cache/global"

mkdir -p "$ZIG_GLOBAL_CACHE_DIR"

cd "$ROOT_DIR/zig"
zig build

echo "Built native Zig simulation core at zig/zig-out/bin/spaced_out"
