#!/bin/zsh --no-rcs
# wda - What dat app?
# Returns the bundle identifier of a macOS application given its path.

if [ $# -eq 0 ]; then
  echo "Usage: $0 <path_to_app>"
  exit 1
fi

mdls "$1" | grep kMDItemCFBundleIdentifier | awk '{print $NF}' | tr -d '"'
