#!/bin/sh
set -eu
target=${1:?target path required}
backup=${2:?backup path required}
cp "$backup" "$target"
cmp -s "$backup" "$target"
printf 'rollback restored %s from %s\n' "$target" "$backup"
