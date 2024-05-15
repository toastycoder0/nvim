call plug#begin()
Plug 'olimorris/onedarkpro.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'VonHeikemen/lsp-zero.nvim', { 'branch': 'v3.x' }
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'mfussenegger/nvim-lint'
Plug 'lukas-reineke/lsp-format.nvim'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-dotenv'
call plug#end()

colorscheme onedark
set nocompatible
set showmatch
set mouse=v
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent
set number
filetype plugin indent on  
syntax on
set mouse=a
set clipboard=unnamedplus
filetype plugin on
set ttyfast

let g:db_ui_env_variable_url = 'DATABASE_URL'
let g:db_ui_env_variable_name = 'DATABASE_NAME'
let g:db_ui_icons = {
    \ 'expanded': '▾',
    \ 'collapsed': '▸',
    \ 'saved_query': '*',
    \ 'new_query': '+',
    \ 'tables': '~',
    \ 'buffers': '»',
    \ 'connection_ok': '✓',
    \ 'connection_error': '✕',
    \ }

let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

lua require('remap')
lua require('telescope')
lua require('treesitter')
lua require('lsp')
lua require('linter')
lua require('format')
lua require'colorizer'.setup()
