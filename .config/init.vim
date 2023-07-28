"=================================================================================
"general
"=================================================================================

syntax on
set ma
set mouse=a
set cursorline
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoread
set nobackup
set nowritebackup
set noswapfile
set nu 
set foldlevelstart=99
set scrolloff=7

" Turn off word wrap
:set nowrap

" Always center cursor in pane
:set scrolloff=999


:autocmd Filetype javascript,javascriptreact,typescript,typescriptreact setlocal ts=2 sw=2 expandtab

" Automatically indent based on context
:set smartindent

" Hightlight columns 81
:set cc=81

"==================================================================================
"plugins
"==================================================================================


call plug#begin()

Plug 'jubnzv/virtual-types.nvim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'mattn/emmet-vim' " Emmet vim
Plug 'Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status
Plug 'neoclide/jsonc.vim' " Vim syntax highlighting plugin for JSON
Plug 'itchyny/lightline.vim' " A light and configurable statusline/tabline
Plug 'pangloss/vim-javascript' " Improve javascript indent and syntax
Plug 'MaxMEllon/vim-jsx-pretty' " JSX and TSX syntax pretty highlighting for vim
Plug 'peitalin/vim-jsx-typescript' " React JSX syntax highlighting for vim and Typescript
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Extra syntax and highlight for nerdtree files
Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'iamcco/coc-tailwindcss',  {'do': 'yarn install --frozen-lockfile && yarn run build'}
"Language packs
Plug 'sheerun/vim-polyglot'


"Nvim motions
Plug 'phaazon/hop.nvim'

"LSP autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

"File browsing
Plug 'nvim-telescope/telescope-file-browser.nvim'

"Buffer navigation
Plug 'nvim-lualine/lualine.nvim'


"Nvim motions
Plug 'phaazon/hop.nvim'

"LSP autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

"debugging
Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'nvim-telescope/telescope-dap.nvim'

"Telescope Requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

"git diff
Plug 'sindrets/diffview.nvim'

"Colour scheme
" My fave colour schemes:
" dracula/dracula-theme, rakr/vim-one, gosukiwi/vim-atom-dark,
" phanviet/vim-monokai-pro rhysd/vim-color-spring-night arzg/vim-colors-xcode
" kyoz/purify 'jonathanfilip/vim-lucius'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

set encoding=UTF-8

"devicons
Plug 'kyazdani42/nvim-web-devicons'

"fullstack dev
Plug 'pangloss/vim-javascript' "JS support
Plug 'leafgarland/typescript-vim' "TS support
Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jparise/vim-graphql' "GraphQL syntax
Plug 'mattn/emmet-vim' "Emmet support
Plug 'gruvbox-community/gruvbox'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
call plug#end()

"key combos
"==============================================================================

set encoding=UTF-8
let mapleader = " "

"Navigate buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bf :bfirst<CR>
nnoremap <leader>bl :blast<CR>

nnoremap ccd :CocList diagnostics<CR>
"Other
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>ne :Telescope file_browser<CR>

autocmd StdinReadPre * let s:std
"==============================================================================
" plugin configs
"==============================================================================

"fzf
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let g:glow_use_pager = v:false

" Focus and redistribute split windows
noremap ff :resize 100 <CR> <BAR> :vertical resize 220<CR>
noremap fm <C-w>=

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme catppuccin

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"Code checker
"let g:neomake_python_enabled_makers = ['flake8']
"call neomake#configure#automake('nrwi', 500)

set encoding=UTF-8
let mapleader = " "
nnoremap <leader><CR> :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>ne :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | :vertical resize 60 | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

set guifont=Hack:h10:cANSI

" Airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :vsplit<CR><Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>F :CocCommand eslint.executeAutofix<CR>
nmap <silent> K :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" This makes the time before it updates your hover faster, other
:set updatetime=300

" This makes it so that you can click a variable and a float window pops up

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" NERDTree ---- {{{

map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
let NERDTreeNaturalSort = 1

" Open a NERDTree automatically when vim starts up and focus on file
autocmd vimenter * NERDTree | wincmd p
" Close vim if the only window left open is a NERDTree
autocmd bufenter *
			\ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
			\ | q | endif

" Reveal current file in NERDTree
nnoremap <leader>f :NERDTreeFind<CR>

" ---- 
" FZF ---- 

" Telescope setup
"Treesitter
"Plug 'nvim-treesitter/nvim-treesitter', {run: ':TSUpdate'}
nnoremap <C-p> :Telescope find_files<CR>
nnoremap <C-b> :Telescope buffers<CR>
nnoremap <C-g> :Telescope live_grep<CR>
nnoremap <C-h> :Telescope help_tags<CR>
nnoremap <C-t> :Telescope treesitter<CR>

" Rg current word
nnoremap <C-SPACE> :Rg <C-r><C-w><CR>

" ---- 

nnoremap <leader>lg :Telescope live_grep<cr>

lua << EOF
require('telescope').setup{ 
	defaults = {
		vimgrep_arguments = {
			'rg',
			'--color=never',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case'
		},
		prompt_prefix=🔍,
		sorting_strategy = "descending",
		layout_strategy = "horizontal",
		sort_lastused = true,
		file_sorter =  require'telescope.sorters'.get_fuzzy_file,
		winblend = 0,
		border = {},
		borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
		color_devicons = true,
		use_less = true,
		file_ignore_patterns = {"node_modules", ".git", "vendor", "*.html", "*.tsx.html", "%.html", "%.tsx.html"},
		theme = "dropdown",	
		path_display = {},
		set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
		file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
		grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
		qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
	},
	find_files = {
		theme = "dropdown",
	}
}
EOF