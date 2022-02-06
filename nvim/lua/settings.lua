-- Show trailing whitespace
-- MUST be inserted BEFORE the colorscheme command
--Disable showmode since using airline
--vim.o.noshowmode=true
vim.cmd[[filetype plugin indent on]]
--Editor
vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.wo.wrap = false -- Display long lines as just one line
vim.cmd('syntax on') -- move to next line with theses keys
vim.o.pumheight = 10 -- Makes popup menu smaller
vim.o.cmdheight = 2 -- More space for displaying messages
vim.o.mouse = "a" -- Enable your mouse
vim.o.splitbelow = true -- Horizontal splits will automatically be below
vim.o.splitright = true -- Vertical splits will automatically be to the right
vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.o.updatetime = 300 -- Faster completion
--vim.o.timeoutlen = 100 -- By default timeoutlen is 1000 ms, this causes leader key not to work
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vim.cmd[[ set dir=~/neovim/swaps ]]

--show existing tab with 4 spaces width
vim.bo.tabstop=4
vim.bo.shiftwidth=4
vim.bo.softtabstop=4
--au Filetype python setl et ts=4 sw=4
vim.bo.expandtab=true
vim.o.smarttab=true
vim.bo.copyindent=true 
--vim.api.nvim_command([[
--augroup AutoTabs
--autocmd Filetype html setlocal ts=2 sw=2 expandtab
--autocmd Filetype tsx setlocal ts=2 sw=2 expandtab
--autocmd Filetype python setlocal ts=4 sw=4 expandtab
--autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 noexpandtab
--augroup END
--]])
----Disable line wrapping
vim.cmd[[ set nowrap ]]
vim.cmd[[ set colorcolumn=80,120 ]]
vim.cmd[[ highlight ColorColumn ctermbg=lightgrey guibg=lightgrey ]]
--VimWiki and Syntax highlighting
--vim.o.nocompatible=true
--filetype plugin on
--vim.o.syntax=true

--vim.cmd[[ let g:vimwiki_list = \[{'path':'~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}\] ]]
--vim.cmd[[ let g:vimwiki_ext2syntax = {'.md':'markdown', '.markdown': 'markdown', '.mdown': 'markdown'} ]]

-- Makes vimwiki links as [text](text.md) instead of [text](text)
vim.g.vimwiki_markdown_link_ext = 1
vim.g.wildmenu=true

--Scroll a bit horizontally when at the end of line
vim.o.sidescroll=6

--Highlight matches when searching
vim.o.hlsearch=true

--Open new split panes to right and below
vim.o.splitright=true
vim.o.splitbelow=true

--Highlight current line
vim.o.cursorline=true
vim.o.showcmd=true

-- Editor Options
vim.g.syntax=true
vim.wo.number=true
vim.wo.relativenumber=true
vim.wo.numberwidth=2

-- which key set time to wait for map sequence 
vim.g.timeoutlen=1000 

-- vim.o.
-- Keep space when scrolling
vim.g.scrolloff=7
vim.g.noswapfile=true
-- set Vim-specific sequences for RGB colors
vim.cmd[["set t_8f=^[[38;2;%lu;%lu;%lum"]]
vim.cmd[["set t_8b=^[[48;2;%lu;%lu;%lum"]]

if vim.fn.has('termguicolors') == 1 then
    vim.api.nvim_command('set termguicolors')
end