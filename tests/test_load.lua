local busted = require('busted')

describe("pizazz.load", function()
  it("applies the light palette", function()
    local pizazz = require('pizazz')
    pizazz.load('light')
    local hl = vim.api.nvim_get_hl_by_name('Normal', true)
    local p = require('pizazz.palette').light
    local fg = string.format('#%06x', hl.foreground)
    local bg = string.format('#%06x', hl.background)
    assert.are.same(p.text_primary.hex, fg)
    assert.are.same(p.bg_main.hex, bg)
  end)
end)
