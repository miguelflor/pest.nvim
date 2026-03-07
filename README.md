# pest.vim

Syntax highlighting for [pest](https://github.com/pest-parser/pest) PEG grammar
files.

Example (using the default color scheme):

![Screenshot](screenshot.png)

## Installation

### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

Add the following to your `vimrc`
```vimrc
Plugin 'pest-parser/pest.vim'
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use 'pest-parser/pest.vim'
```

## Neovim LSP support

### Install language server

If you're using [mason.nvim](https://github.com/williamboman/mason.nvim), run:
```vimrc
:MasonInstall pest-language-server
```

Or install it manually:
```bash
cargo install pest-language-server
```

### Set up language server

> **No LSP?** Follow [this setup tutorial](https://www.youtube.com/watch?v=IZnhl121yo0) to get one configured.

Create a new file `pest_ls.lua` on the lsp folder.
Then paste this code:
```lua
return {
  cmd = { 'pest-language-server' },
  filetypes = { 'pest' },
  root_markers = {'Cargo.toml', '.git' },
}
```
