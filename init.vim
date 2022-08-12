call plug#begin()

Plug 'preservim/nerdcommenter'

Plug 'windwp/nvim-autopairs'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
"native implementation of fuzzy search for telescope
"needs cmake and Visual Studio Build Tools for C++
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }


Plug 'EdenEast/nightfox.nvim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'vim-airline/vim-airline'

" this might cause an error the first time you run it. if it does, remove
" TSUpdate, install the plugin, then install parsers (e.g. `TSInstall c`)
" and finally re-add this to the config file
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

filetype on
filetype plugin on
filetype indent on
syntax on

nnoremap <SPACE> <Nop>
map <Space> <Leader>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require("nvim-autopairs").setup {}
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
EOF

colorscheme nightfox

" markdown
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1

set guifont=Hack:12

imap ;; <Esc>
nnoremap ;; :noh<return><Esc>
nnoremap <Esc> :noh<return><Esc>

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

let g:airline#extensions#tabline#enabled = 1

