# Page Generation

Markdown files in the `pages/` directory are converted into HTML pages for the blog using a bash script. Run: `./build.sh` from the root of this repo.

The npm package [Marked](https://www.npmjs.com/package/marked) is used.

Debugging? Run this command from inside this directory to generate a single HTML page:
`./make_html_page.sh ../programs.md ./programs.html`

The `make_html_page.sh` script is used in a loop by `build.sh`.
