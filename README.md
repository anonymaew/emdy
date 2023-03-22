# My Markdown Previewer

My markdown previewer/hosting platform resembling GFM, useful for
notetaking, previewing markdown, or hosting blogs. (I haven't tested the
hosting part, so it's just a previewing tool for now)

## Features

- Supports light/dark theme
- JavaScript is not needed for viewing
- Code block highlighting
- Table of contents on the side
- Supports [LaTex math expressions](https://www.mathjax.org/)
- [TODO] Supports [Mermaid Diagram](https://mermaid.js.org/)

## Install and Run

1. Install [Bun Runtime](https://bun.sh/)
2. Install dependencies

```sh
bun i
```

3. Put your Markdown files in the `./src/pages` directory
4. Spin up a server, the li

```sh
bun run dev
```
