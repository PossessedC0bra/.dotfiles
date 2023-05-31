-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- enable "hybrid" line numbers
vim.wo.relativenumber = true

-- add rulers for 80 and 120 wide lines
vim.opt.colorcolumn = { 80, 120 }
