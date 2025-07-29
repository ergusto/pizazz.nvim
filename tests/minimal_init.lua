-- Add plugin and dependencies to runtimepath
local root = vim.fn.fnamemodify('..', ':p')
vim.opt.rtp:append(root .. '/tests/deps/plenary.nvim')
vim.opt.rtp:append(root .. '/tests/deps/lush.nvim')
vim.opt.rtp:append(root)
