local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = { "menuone", "noselect" },
  conceallevel = 0,
  cursorline = true,
  expandtab = true,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  joinspaces = true,
  laststatus = 2,
  lazyredraw = true,
  linebreak = true,
  list = true,
  listchars = { eol = '¬', extends = '⟩', precedes = '⟨', tab = '│·', trail = '·', space = '·' },
  mouse = "a",
  number = true,
  numberwidth = 4,
  pumblend = 10,
  pumheight = 10,
  relativenumber = true,
  scrolloff = 8,
  shiftwidth = 2,
  showcmd = false,
  showmode = false,
  showtabline = 2,
  sidescrolloff = 8,
  signcolumn = "yes",
  smartcase = true,
  smartindent = true,
  smarttab = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  tabstop = 2,
  termguicolors = true,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  wrap = false,
  writebackup = false,
}

if not vi then
  vim.opt.softtabstop = -1 -- use 'shiftwidth' for tab/bs at end of line
end

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]


if vim.fn.filereadable('/usr/local/bin/python3') == 1 then
  -- speeding up start-up.
  vim.g.python3_host_prog = '/usr/local/bin/python3'
end


-- # generate vimwiki diary template
vim.cmd([[autocmd BufNewFile ~/code/wiki/diary/*.md :silent 0r !~/bin/generate-vimwiki-diary-template.py '%']])
-- # balance buffer size when nvim is resized (via tmux)
vim.cmd([[autocmd Vimresized * :wincmd =]])
