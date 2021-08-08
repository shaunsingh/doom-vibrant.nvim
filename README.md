
# shaunsingh/doom-vibrant.nvim

## Features

doom-vibrant.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
    + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
    + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
    + [Git Gutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.


## ⚡️ Requirements

+ Neovim >= 0.5.0

## 🌙 Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'shaunsingh/doom-vibrant.nvim'
```

```lua
-- If you are using Packer
use 'shaunsingh/doom-vibrant.nvim'
```

## 🌓 Usage

Enable the colorscheme:
```vim 
"Vim-Script:
colorscheme doom
```

```lua
--Lua:
require('doom').set()
```

To enable the `doom` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'doom'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

| Option                              | Default     | Description                                                                                                                                                     |
| ----------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| doom_contrast                   | `false`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| doom_borders                    | `false`     | Enable the border between verticaly split windows visable
| doom_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background
| doom_cursorline_transparent     | `false`     | Set the cursorline transparent/visible
| doom_enable_sidebar_background  | `false`     | Re-enables the backgrond of the sidebar if you disabled the background of everything
| doom_italic                     | `true`      | enables/disables italics
 

```lua
-- Example config in lua
vim.g.doom_contrast = true
vim.g.doom_borders = false
vim.g.doom_disable_background = false
vim.g.doom_italic = false

-- Load the colorscheme
require('doom').set()
```

```vim
" Example config in Vim-Script
let g:doom_contrast = v:true
let g:doom_borders = v:false
let g:doom_disable_background = v:false
let g:doom_italic = v:false

-- Load the colorscheme
colorscheme doom
```

