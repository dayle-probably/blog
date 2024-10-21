#!/bin/bash

# Directory containing the Markdown files
PAGES_DIR="pages"

# Output directory
OUTPUT_DIR="_out"

# Ensure output directory exists
mkdir -p "$OUTPUT_DIR"

# Iterate over each Markdown file in the PAGES_DIR
for markdown_file in "$PAGES_DIR"/*.md; do
    # Extract the filename without the extension
    filename=$(basename "$markdown_file" .md)

    # Define the output HTML file path
    output_file="$OUTPUT_DIR/$filename.html"

    # Call the script for each file
    ./page_generation/make_html_page.sh "$markdown_file" "$output_file"
done
