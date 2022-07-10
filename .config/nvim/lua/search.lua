--------------------------------------------------------------------------------
-- Search GUI (Telescope)
--------------------------------------------------------------------------------
require("telescope").setup{}

Nmap("<leader>f", ":lua require('telescope.builtin').find_files()<cr>")
Nmap("<leader>j", ":lua require('telescope.builtin').git_files()<cr>")
Nmap("<leader>g", ":lua require('telescope.builtin').live_grep()<cr>")
