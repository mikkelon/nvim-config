return {
  'm4xshen/autoclose.nvim',
  config = function()
    require('autoclose').setup({
      keys = {
        -- Example key setup:
        -- ["{"] = { close = true, escape = true, pair = "{}", disabled_filetypes = {} },
      },
      options = {
        disabled_filetypes = { "text", "markdown" },
        pair_spaces = true
      }
    })
  end,
}
