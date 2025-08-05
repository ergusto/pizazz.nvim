# pizazz.nvim

A simple blue nvim theme with both dark and light variants.

## Installation & Configuration

#### Lazy.nvim

```lua
{
  "ergusto/pizazz.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("pizazz_dark")
    -- or vim.cmd.colorscheme("pizazz_light")
  end,
}
```

#### Packer

```lua
use {
  "ergusto/pizazz.nvim",
  config = function()
    vim.cmd.colorscheme("pizazz_dark")
  end
}
```

#### Manual

```lua
-- In your init.lua
vim.cmd.colorscheme("pizazz_dark")
-- or
vim.cmd.colorscheme("pizazz_light")
```

## Programmatic Usage

```lua
local pizazz = require("pizazz")

-- Load dark theme
pizazz.load("dark")

-- Load light theme
pizazz.load("light")

-- Access color palettes
local dark_colors = pizazz.dark
local light_colors = pizazz.light
```

![Preview](/assets/preview.png)

![Preview React](/assets/preview.react.png)
