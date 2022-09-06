#!/usr/bin/env bash
set -euo pipefail
# compare contents of pairs of files passed as command line arguments.
# print error message (set in `$errormsg` environment variable) and exit if any
# pair does not have equal contents.
while (($#)); do
  # impurity: our special setup requires that the second file is at the top level of a workspace.
  if ! cmp -s "$1" "$2"; then
    echo "$errormsg"
    exit 1
  fi
  shift; shift
done
