-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Keybinds

-- Nerd Tree Keybinds
map("n", "<leader>e", ":NvimTreeOpen<CR>")
map("n", "<C-n>", ":NvimTreeFocus<CR>")

-- Spelling and Markdown Conceal Keybinds
map("n", "<F11>", ":set spell!<CR>")
map("n", "<F10>", ":set conceallevel=1<CR>")

-- Pandoc Keybinds
map("n", "<leader>r", ":silent !pandoc % --to=pdf > %.pdf && zathura %.pdf")
map("n", "<leader>w", ":silent !pandoc % --to=pdf > %.pdf")

-- Toggle Term
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

