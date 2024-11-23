require('packer').startup(function(use)
  use 'goolord/alpha-nvim'
end)

local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')


dashboard.section.header.val = {
    [[                                     ]],
    [[      __                _            ]],
    [[   /\ \ \___  ___/\   /(_)_ __ ___   ]],
    [[  /  \/ / _ \/ _ \ \ / | | '_ ` _ \  ]],
    [[ / /\  |  __| (_) \ V /| | | | | | | ]],
    [[ \_\ \/ \___|\___/ \_/ |_|_| |_| |_| ]],
    [[                                     ]],
}


dashboard.section.buttons.val = {
  dashboard.button("f", "📂 Find file", ":Telescope find_files<CR>"),
  dashboard.button("n", "📝 New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("r", "🕒 Recent files", ":Telescope oldfiles<CR>"),
  dashboard.button("c", "⚙️  Config", ":e $MYVIMRC<CR>"),
  dashboard.button("q", "❌ Quit", ":qa<CR>"),
}


dashboard.section.footer.val = "⚡"


alpha.setup(dashboard.opts)


vim.opt.termguicolors = true
vim.cmd("set background=dark") 
vim.cmd("highlight clear") 
vim.cmd("highlight Normal guifg=#ffffff guibg=#000000") 
vim.cmd("highlight NonText guifg=#ffffff guibg=#000000") 
vim.cmd([[highlight Normal guibg=NONE ctermbg=NONE]])

vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = "#ffffff", bg = "#000000" }) 
vim.api.nvim_set_hl(0, 'DashboardCenter', { fg = "#ffffff", bg = "#000000" })  
vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = "#ffffff", bg = "#000000" }) 
vim.api.nvim_set_hl(0, 'Normal', { fg = "#ffffff", bg = "#000000" }) 

