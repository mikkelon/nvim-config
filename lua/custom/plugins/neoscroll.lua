return {
  "karb94/neoscroll.nvim",
  config = function()
    vim.defer_fn(function()                                                                                        -- Set a delay to ensure correct loading
      require('neoscroll').setup({
        pre_hook = function(info) if info == 'centerc_pre' then vim.api.nvim_feedkeys('<S-M>', 'n', true) end end, -- Doesn't seem to work atm.
        post_hook = function(info) if info == 'centerc_post' then vim.api.nvim_feedkeys('zz', 'n', true) end end
      })

      local t = {}
      t['<C-u>'] = { 'scroll', { '-vim.wo.scroll', 'true', '350', 'sine', [['centerc_post']] } }
      t['<C-d>'] = { 'scroll', { 'vim.wo.scroll', 'true', '350', 'sine', [['centerc_post']] } }

      require('neoscroll.config').set_mappings(t)
    end, 100)
  end
}
