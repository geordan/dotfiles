vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle) 

-- Move blocks of selected text with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- Move lines up and keep cursor in original position

-- Keep the cursor in the middle of the screen with half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep the cursor in the middle of the screen while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

-- greatest remap ever, keep original yank in buffer when pasting over 
-- selected word
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
-- yank into system clipboard vs nvim clipboard
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])

-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]]) Oo

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- QuickFix list navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Replace the word I was on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/geordan/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
--
--------------------------------------------------------------------------------
-- telekasten
--------------------------------------------------------------------------------
vim.keymap.set("n", "<leader>zf", function() require('telekasten').find_notes() end)
vim.keymap.set("n", "<leader>zd", function() require('telekasten').find_daily_notes() end)
vim.keymap.set("n", "<leader>zg", function() require('telekasten').search_notes() end)
vim.keymap.set("n", "<leader>zz", function() require('telekasten').follow_link() end)
vim.keymap.set("n", "<leader>zT", function() require('telekasten').goto_today() end)
vim.keymap.set("n", "<leader>zW", function() require('telekasten').goto_thisweek() end)
vim.keymap.set("n", "<leader>zw", function() require('telekasten').find_weekly_notes() end)
vim.keymap.set("n", "<leader>zn", function() require('telekasten').new_note() end)
vim.keymap.set("n", "<leader>zN", function() require('telekasten').new_templated_note() end)
vim.keymap.set("n", "<leader>zy", function() require('telekasten').yank_notelink() end)
vim.keymap.set("n", "<leader>zc", function() require('telekasten').show_calendar() end)
vim.keymap.set("n", "<leader>zC", function() require('calendar').CalendarT() end)
vim.keymap.set("n", "<leader>zi", function() require('telekasten').paste_img_and_link() end)
vim.keymap.set("n", "<leader>zt", function() require('telekasten').toggle_todo() end)
vim.keymap.set("n", "<leader>zb", function() require('telekasten').show_backlinks() end)
vim.keymap.set("n", "<leader>zF", function() require('telekasten').find_friends() end)
vim.keymap.set("n", "<leader>zI", function() require('telekasten').insert_img_link({ i=true }) end)
vim.keymap.set("n", "<leader>zp", function() require('telekasten').preview_img() end)
vim.keymap.set("n", "<leader>zm", function() require('telekasten').browse_media() end)
vim.keymap.set("n", "<leader>za", function() require('telekasten').show_tags() end)
vim.keymap.set("n", "<leader>#", function() require('telekasten').show_tags() end)
vim.keymap.set("n", "<leader>zr", function() require('telekasten').rename_note() end)

-- on hesitation, bring up the panel
vim.keymap.set("n", "<leader>z", function() require('telekasten').panel() end)

-- we could define [[ in **insert mode** to call insert link
-- inoremap [[ <cmd>:lua require('telekasten').insert_link()<CR>
-- alternatively: leader [
-- vim.keymap.set("i", "<leader>[", require('telekasten').insert_link({ i=true }) end)
-- vim.keymap.set("i", "<leader>zt", require('telekasten').toggle_todo({ i=true }) end)
-- vim.keymap.set("i", "<leader>#", require('telekasten').show_tags({i = true}) end)
