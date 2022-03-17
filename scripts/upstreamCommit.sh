#!/usr/bin/env bash

# requires curl & jq

# upstreamCommit <baseHash> <upstreamHash>
# param: bashHash - the commit hash to use for comparing commits (baseHash...HEAD)

(
set -e
PS1="$"

pearl=$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/repos/Pearl-Project/Pearl/compare/$1...$2 | jq -r '.commits[] | "Pearl-Project/Pearl@\(.sha[:7]) \(.commit.message | split("\r\n")[0] | split("\n")[0])"')

updated=""
logsuffix=""
if [ ! -z "$pearl" ]; then
    logsuffix="$logsuffix\n\nPearl Changes:\n$pearl"
    updated="Pearl"
fi
disclaimer="Upstream has released updates that appear to apply and compile correctly"

log="${UP_LOG_PREFIX}Updated Upstream ($updated)\n\n${disclaimer}${logsuffix}"

echo -e "$log" | git commit -F -

) || exit 1