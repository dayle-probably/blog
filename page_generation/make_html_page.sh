#!/bin/bash

# Get the directory of the script
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

TEMPLATE_HEAD="$SCRIPT_DIR/template_head.html"
TEMPLATE_FOOT="$SCRIPT_DIR/template_foot.html"
MARKDOWN_FILE="$1"
OUTPUT_FILE="$2"

# Convert markdown to HTML body
npx marked -i "$MARKDOWN_FILE" -o "temp_body.html"

# Merge with the template
cat "$TEMPLATE_HEAD" temp_body.html "$TEMPLATE_FOOT" > "$OUTPUT_FILE"
rm temp_body.html  # clean up temporary file
