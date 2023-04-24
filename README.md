# Notes

My markdown website hosting platform, useful for notetaking, previewing
markdown, or hosting blogs.

## Features

- Supports light/dark theme
- Supports printing (yes)
- JavaScript is not needed for viewing
- Code block highlighting
- Table of contents on the side
- Supports [LaTex math expressions](https://www.mathjax.org/)

## Prerequisite

Make sure you have `docker` cli.

## Run a Server

1. Create an Image `napatsc/notes`.
2. Spin up containers using the template
   [`docker-compose.yml`](./docker-compose.yml).
   - You need to config mounting volumn of your markdown directory and output
     directory.
   - You might need to change your port number if there is a collision.

