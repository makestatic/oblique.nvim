# oblique.nvim
A nostalgic 90s-inspired Neovim colorscheme that brings back old-school coding vibes. *(tho i learned coding 3y ago ;)*

![oblique.nvim](dark-preview.png)  
---
![oblique.nvim](light-preview.png)

## Install the latest version (via lazy.nvim)
```lua
{
  "makestatic/oblique.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme oblique")
  end
}
```

## The previous version

![previous-oblique.nvim](prev-version.png)

This version had a more *modern-ish* look. You can find it at this [commit](https://github.com/makestatic/oblique.nvim/tree/b6c40c0c04a756efb2ff42f4fffde352e05eac96), or install it (via lazy.nvim) using the code below.  *It doesn’t have a light mode (dark mode only).*

```lua
{
  "makestatic/oblique.nvim",
  commit = "b6c40c0c04a756efb2ff42f4fffde352e05eac96",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme oblique")
  end
}
```

## Plugins supported
- Treesitter  
- Telescope  
- Cmp  
- Lualine  
- Nvim-Tree  
- Bufferline  

## TODO
- Supports more plugins

<sub>Copyright (c) 2025 Ali Almalki. Licensed under BSD-3-Clause.</sub>
