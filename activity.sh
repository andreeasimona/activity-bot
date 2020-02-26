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
git commit --date="Fri Nov 6 20:00:00 2019 -0600" -m "$info" 
#git commit --amend --no-edit --date="$pastDate" -m"$info" 
git push