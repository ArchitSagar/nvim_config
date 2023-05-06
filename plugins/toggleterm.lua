function _G.set_terminal_keymaps()
  local opts = { noremap = true }
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-t>", [[<Cmd>:2ToggleTerm<CR>]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = 10,
    open_mapping = [[<F7>]],
    shading_factor = 2,
    direction = "horizontal",
    float_opts = {
      border = "curved",
      highlights = { border = "Normal", background = "Normal" },
    },
    shell = "/usr/bin/fish",
  },
}
