#!/bin/bash

echo "Staring Frequency analyzer ..."

#run the python script
FREQ_RESULT=$(python3 /app/.github/scripts/frequency.py /app/data.txt)

# run update readme
bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITUB_USER"

echo "Proccess completed!"