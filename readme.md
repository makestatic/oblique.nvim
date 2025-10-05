# oblique.nvim
A nostalgic 90s-inspired Neovim colorscheme that brings back old-school coding vibes. It’s minimal, punchy, and straight to the point.

![oblique.nvim](dark-preview.png)  
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

This version has a more *modern* look. You can find it at this [commit](https://github.com/makestatic/oblique.nvim/tree/b6c40c0c04a756efb2ff42f4fffde352e05eac96), or install it (via lazy.nvim) using the code below.  
Although, it doesn’t have a light mode — it’s dark mode only.

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
- Add more plugin support  

<sub>Copyright (c) 2025 Ali Almalki. Licensed under BSD-3-Clause.</sub>
