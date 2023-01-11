# scribe.nvim

A convenient way to find and take projectrs notes written in Lua.

## Contents

- [Getting Started](#getting-started)
- [Usage](#usage)
- [Setup](#setup)
- [Contributing](#contributing)
- [Wish List](#wish-list)

## Getting Started

### Installation

#### [vim-plug](https://github.com/junegunn/vim-plug)

```viml
Plug 'justEstif/scribe.nvim'
```

#### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
return require('packer').startup(function(use)
  use 'justEstif/scribe.nvim'
end)
```

#### [dein.vim](https://github.com/Shougo/dein.vim)

```viml
call dein#add('justEstif/scribe.nvim')
```

## Usage

```viml
" Creates a new default file (index.md) or opens the file up if it exists.
" The default file can be configured under setup.
nnoremap <leader>ss :ScribeOpen<cr>

" Creates a new file or opens the file up if it exists.
" Requires a filename.
nnoremap <leader>so :ScribeOpen<space>
```

## Setup

### Default setup

```lua
-- Default values
-- {
--   directory = '~/notes/', -- must add the / after and before dir
--   file_ext = 'md',
--   default_file = 'index'
-- }
require('scribe').setup{}
```

### Custom setup with project root as default directory

```lua
require('scribe').setup{
  directory = './notes/',
  file_ext = '.txt',
  default_file = 'scribe'
}
```

## Contributing

All contributions are welcome! Just open a pull request.
