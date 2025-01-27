#!/bin/bash

# Directory containing the Markdown files
PAGES_DIR="pages"

# Output directory
OUTPUT_DIR="_out"

# Ensure output directory exists
mkdir -p "$OUTPUT_DIR"

# Find all Markdown files in the PAGES_DIR recursively
find "$PAGES_DIR" -name "*.md" | while read -r markdown_file; do
    # Extract the relative directory path
    relative_dir=$(dirname "${markdown_file#$PAGES_DIR/}")

    # Create the corresponding subdirectory in OUTPUT_DIR
    mkdir -p "$OUTPUT_DIR/$relative_dir"

    # Extract the filename without the extension
    filename=$(basename "$markdown_file" .md)
    
    # Define the output HTML file path, preserving subdirectory structure
    output_file="$OUTPUT_DIR/$relative_dir/$filename.html"

    # Call the script for each file
    ./page_generation/make_html_page.sh "$markdown_file" "$output_file"
done
