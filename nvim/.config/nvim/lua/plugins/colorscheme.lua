return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
  },

  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
  },

  {
    "vague-theme/vague.nvim",
    priority = 1000,
  },

  {
    "ribru17/bamboo.nvim",
    priority = 1000,
  },

  {
    "kamwitsta/vinyl.nvim",
    priority = 1000,
  },

  {
    "uhs-robert/oasis.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("oasis-desert")
    end,
  },
}
