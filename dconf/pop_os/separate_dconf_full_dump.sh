#!/usr/bin/env bash

function extractDconfPath() {
    local wordRegex='([0-9a-zA-Z\-:]+)'
    echo "$1" | awk '
    /\['$wordRegex'(\/'$wordRegex')*\]/ {
        sub(/\[/, "");
        sub(/\]/, "");
        print;
    }
    '
}

function outputToFile() {
    local contents="$1"
    local filePath="$(extractDconfPath "$contents")".conf

    if [[ ! -e "$(dirname $filePath)" ]]; then
        mkdir -p "$(dirname $filePath)"
    fi

    if [[ -f "$filePath" ]]; then
        mv $filePath "${filePath}.bak"
    fi

    printf "$contents" | tee $filePath &>/dev/null
}

accumulator=""
nl=$'\n'
while IFS= read -r line; do
    if [[ "$line" = '' ]]; then
        outputToFile "${accumulator}${nl}"
        accumulator=""
        continue
    fi

    if [[ "$accumulator" = '' ]]; then
        accumulator="${line}"
        continue
    fi

    accumulator="${accumulator}${nl}${line}"
done < settings.dconf
