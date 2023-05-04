# Tyzlo's NeoVim config

## Installation

Install Neovim

https://wiki.archlinux.org/title/Neovim

Clone the repo

```
git clone git@github.com:TCHEOUValentine/nvim-config.git
```

Move the config directory in .config

```
mv nvim-config/nvim/ ~/.config
```

Launch the configuration (automatic)

```
nvim
```

Install ripgrep for Live Grep (Telescope)

```
https://github.com/BurntSushi/ripgrep
```

## Plugins List

- [wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)
- [EdenEast/nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
- [rebelot/kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- [xiyaowong/transparent.nvim](https://github.com/xiyaowong/transparent.nvim)
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline)
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [hrsh7th/cmp-vsnip](https://github.com/hrsh7th/cmp-vsnip)
- [hrsh7th/vim-vsnip](https://github.com/hrsh7th/vim-vsnip)
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [williamboman/nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
- [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [norcalli/nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua)

## New Command and Keybinds

Lsp Installer
```
:LspInstallInfo
```

- i : install
- u : update
- X : remove

Leap

- Search forward
```
s
```

- Search backward
```
S
```

Commenting

- Toggle Comment
```
gcc
```

Telescope

- Search file
```
<Space>ff
```

- Search definition
```
<Space>fb
```

- Live Grep Search
```
<Space>fg
```

Nvim Tree

- Toggle Tree
```
<Space>t
```

Terminal

- Toggle the Terminal
```
<Ctrl>\
```
