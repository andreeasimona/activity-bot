#!/usr/bin/env bash
#
# Commit Bot
#
info="Commit: $(date)"

echo "$info" >> output.txt
echo "$info"
echo

# Commit it
git add output.txt
git commit -m "$info"
git push