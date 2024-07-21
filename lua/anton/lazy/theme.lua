return {
  {
    --"folke/tokyonight.nvim",
    --"ellisonleao/gruvbox.nvim",
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      --vim.cmd([[colorscheme tokyonight-night]])
      vim.cmd([[colorscheme poimandres]])
      --vim.cmd([[colorscheme gruvbox]])
      vim.cmd [[
        highlight Normal ctermbg=none guibg=none
        highlight NonText ctermbg=none guibg=none
        highlight LineNr ctermbg=none guibg=none
        highlight EndOfBuffer ctermbg=none guibg=none
      ]]
    end,
  },
}
