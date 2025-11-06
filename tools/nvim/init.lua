--create a function  to put current window in full screen
--Put current window in new tab
--swap to windows in current tab.
--

--Basic
vim.opt.number=true
vim.opt.relativenumber=true

vim.opt.cursorline=true

-- Lines below/above the cursor
vim.opt.scrolloff=10

--Indentation and tabs
-- How many spaces a <Tab> character displays as.
-- (Purely visual — doesn’t change file content)
vim.opt.tabstop = 2

-- How many spaces a <Tab> or <BS> (backspace) counts for while editing.
-- It "feels" like you're inserting tabs of 2 spaces, but with 'expandtab'
-- it will insert actual spaces or tabs.
vim.opt.softtabstop = 2

-- Pressing Tab inserts spaces instead of <Tab> character.
vim.opt.expandtab = true

-- Number of spaces used for each step of (auto)indent.
vim.opt.shiftwidth = 2

-- Indent 
vim.keymap.set('n', '<C-S-I>', 'gg=G', { desc = 'Indent entire file' })


--Search

-- By default, searching is case sensitive. We need to change it
vim.opt.ignorecase=true

-- When we want to apply a case sensitive search, we type a upper case letter in the search.
vim.opt.smartcase=true

vim.opt.iskeyword:append("-")                      -- Treat dash as part of word
vim.opt.path:append("**")                          -- include subdirectories in search


-- When we we type a ) or ], The cursor will go to the matching  ) for some tenths of second
vim.opt.showmatch=true

-- This time will be 2 tenths of second.
vim.opt.matchtime=2



--LEADER KEY

--Use space al leader
vim.g.mapleader = " "

----Use space as local leader. It's like leader but applies to a buffer.
vim.g.maplocalleader=" "





--Key masp


-- Window split
vim.keymap.set("n","<leader>vs",":vsplit<CR>",{desc ="Split window vertically"})

vim.keymap.set("n","<leader>hs",":split<CR>",{desc ="Split window horizontally"})


--Window navigation

vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Move to right window" })

--We use C-\ C-o to tell the terminal that we want to run one command in normal mode
-- is \\ instead of \, because \ is interpretated as special character by lua
vim.keymap.set("t", "<A-h>", "<C-\\><C-o><C-w>h", { desc = "Move to left window" })
vim.keymap.set("t", "<A-j>", "<C-\\><C-o><C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("t", "<A-k>", "<C-\\><C-o><C-w>k", { desc = "Move to top window" })
vim.keymap.set("t", "<A-l>", "<C-\\><C-o><C-w>l", { desc = "Move to right window" })
vim.keymap.set("i", "<A-h>", "<C-\\><C-o><C-w>h", { desc = "Move to left window" })
vim.keymap.set("i", "<A-j>", "<C-\\><C-o><C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("i", "<A-k>", "<C-\\><C-o><C-w>k", { desc = "Move to top window" })
vim.keymap.set("i", "<A-l>", "<C-\\><C-o><C-w>l", { desc = "Move to right window" })

--Open terminal at the top down 

vim.keymap.set("n", "<A-t>", ":botright split|  resize 5 | term <CR>i", { desc = "Open terminal at the top down" })

--Window size

vim.keymap.set("n", "<A-Up>", ":resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<A-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<A-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<A-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Save file
vim.keymap.set("n", "<C-S>", ":w<CR>", { desc = "Save file" })
vim.keymap.set("i", "<C-S>", "<C-\\><C-o>:w<CR>", { desc = "Save file" })

--Exit
--vim.keymap.set("i", "<C-W>", "<C-\\><C-o>:q<CR>", { desc = "Exit" })
--vim.keymap.set("t", "<C-W>", "<C-\\><C-n>:<CR>", { desc = "Exit" })

-- Move lines up/down
--vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
--vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })
--vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
--vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- File navigation
vim.keymap.set("n", "<A-e>", ":Lexplore | vertical resize 20 <CR>", { desc = "Open file explorer at the left size" })
--Find file
vim.keymap.set("n", "<leader>ff", ":find ", { desc = "Find file" })

--Use system clipboard
vim.opt.clipboard:append("unnamedplus")


vim.opt.showtabline = 2  -- Always show tabline (0=never, 1=when multiple tabs, 2=always)
vim.opt.tabline = ''     -- Use default tabline (empty string uses built-in)


-- Alternative navigation (more intuitive)
vim.keymap.set('n', '<leader>tn', ':tabnew<CR>', { desc = 'New tab' })
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', { desc = 'Close tab' })

-- Tab moving
vim.keymap.set('n', '<leader>t>', ':tabmove +1<CR>', { desc = 'Move tab right' })
vim.keymap.set('n', '<leader>t<', ':tabmove -1<CR>', { desc = 'Move tab left' })

vim.keymap.set('n', '<A-1>', '1gt', { noremap = true  })
vim.keymap.set('n', '<A-2>', '2gt', { noremap = true  })
vim.keymap.set('n', '<A-3>', '3gt', { noremap = true  })
vim.keymap.set('n', '<A-4>', '4gt', { noremap = true  })
vim.keymap.set('n', '<A-5>', '5gt', { noremap = true  })
vim.keymap.set('n', '<A-6>', '6gt', { noremap = true  })
vim.keymap.set('n', '<A-7>', '7gt', { noremap = true  })
vim.keymap.set('n', '<A-8>', '8gt', { noremap = true  })
vim.keymap.set('n', '<A-9>', '9gt', { noremap = true  })
vim.keymap.set('n', '<A-10>', '10gt', { noremap = true})

vim.keymap.set('i', '<A-1>', '<C-\\><C-o>1gt', { noremap = true })
vim.keymap.set('i', '<A-2>', '<C-\\><C-o>2gt', { noremap = true })
vim.keymap.set('i', '<A-3>', '<C-\\><C-o>3gt', { noremap = true })
vim.keymap.set('i', '<A-4>', '<C-\\><C-o>4gt', { noremap = true })
vim.keymap.set('i', '<A-5>', '<C-\\><C-o>5gt', { noremap = true })
vim.keymap.set('i', '<A-6>', '<C-\\><C-o>6gt', { noremap = true })
vim.keymap.set('i', '<A-7>', '<C-\\><C-o>7gt', { noremap = true })
vim.keymap.set('i', '<A-8>', '<C-\\><C-o>8gt', { noremap = true })
vim.keymap.set('i', '<A-9>', '<C-\\><C-o>9gt', { noremap = true })
vim.keymap.set('i', '<A-10>','<C-\\><C-o>10gt', { noremap = true })

vim.keymap.set('t', '<A-1>', '<C-\\><C-o>1gt', { noremap = true })
vim.keymap.set('t', '<A-2>', '<C-\\><C-o>2gt', { noremap = true })
vim.keymap.set('t', '<A-3>', '<C-\\><C-o>3gt', { noremap = true })
vim.keymap.set('t', '<A-4>', '<C-\\><C-o>4gt', { noremap = true })
vim.keymap.set('t', '<A-5>', '<C-\\><C-o>5gt', { noremap = true })
vim.keymap.set('t', '<A-6>', '<C-\\><C-o>6gt', { noremap = true })
vim.keymap.set('t', '<A-7>', '<C-\\><C-o>7gt', { noremap = true })
vim.keymap.set('t', '<A-8>', '<C-\\><C-o>8gt', { noremap = true })
vim.keymap.set('t', '<A-9>', '<C-\\><C-o>9gt', { noremap = true })
vim.keymap.set('t', '<A-10>','<C-\\><C-o>10gt', { noremap = true })

--Go to normal mode
print("Hello nvim")




