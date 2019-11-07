#!/usr/bin/env bash
#
# Commit Bot
#
pastDate=$(date +%Y:%m:%d -d "100 day ago")
info="Commit: $pastDate"

echo "$info" >> output.txt
echo "$info"
echo

# Commit it
git add output.txt
git commit --amend --no-edit -m "$info" --date="$pastDate"
git push