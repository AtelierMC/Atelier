#!/usr/bin/env bash

# file utilized in github actions to automatically update upstream

(
set -e
PS1="$"

current=$(cat gradle.properties | grep pearlCommit | sed 's/pearlCommit = //')
upstream=$(git ls-remote https://github.com/Pearl-Project/Pearl | grep master | cut -f 1)

if [ "$current" != "$upstream" ]; then
    sed -i 's/pearlCommit = .*/pearlCommit = '"$upstream"'/' gradle.properties
    {
      ./gradlew applyPatches --stacktrace && ./gradlew build --stacktrace && ./gradlew rebuildPatches --stacktrace
    } || exit

    git add .
    ./scripts/upstreamCommit.sh "$current" "$upstream"
fi

) || exit 1