call plug#begin()
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'moll/vim-bbye'
Plug 'aymericbeaumet/vim-symlink'
Plug 'tiagovla/tokyodark.nvim'
call plug#end()

augroup MINE
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e
augroup END
