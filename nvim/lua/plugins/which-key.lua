return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    require('which-key').setup({
      delay = 200
    })  

    require('which-key').add({
      { '<leader>c', group = '[C]ode' },
      { '<leader>f', group = '[F]ile' },
      { '<leader>s', group = '[S]plit' },
      { '<leader>t', group = '[T]ab' },
    })
  end
}
