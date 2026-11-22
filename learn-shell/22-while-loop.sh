#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)

while IFS= read -r line
do
    printf '%s\n' "$line"
done < "$script_dir/02-conversation.sh"