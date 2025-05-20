return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",            -- ou "BufReadPre" se preferir carregar antes
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- usado para ícones nos buffers
  },
  config = function(_, opts)
    require("bufferline").setup(opts)

    vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Close current buffer", silent = true })
  end,
}
