# pizazz.nvim

A simple blue nvim theme

#### Example Lua config

```lua
{
  "ergusto/pizazz.nvim",
  lazy = false,
  priority = 1000,
  dependencies = {
    { "rktjmp/lush.nvim", lazy = true },
  },
  config = function()
    vim.cmd.colorscheme("pizazz_dark")
  end,
}
```

![Preview](/assets/preview.png)

![Preview React](/assets/preview.react.png)

### Running tests

After cloning the test dependencies you can run the suite with `busted` under
Neovim:

```bash
nvim --headless -u tests/minimal_init.lua \
  -c "lua require('plenary.busted').run{'tests'}" \
  -c qa
```
