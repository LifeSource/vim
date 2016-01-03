execute pathogen#infect()
syntax on
filetype plugin indent on
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme lifesource
"set background=dark
highlight Normal ctermbg=NONE 
highlight nonText ctermbg=NONE

" ------------------------------------------------------------------------
" Standard settings
" ------------------------------------------------------------------------
autocmd BufRead,BufNewFile *.styl,*.md,*.css setlocal spell

set nocompatible
set number
set showcmd
set showmode
set showmatch
set noswapfile
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set smarttab
set modeline
set nohidden
set autoindent
set smartindent
set copyindent
set ignorecase
set incsearch
set hlsearch
set laststatus=2
"set foldmethod=indent

"if has("mouse")
set mouse=a
"endif

runtime bundles/tplugin_vim/macros/tplugin.vim

" ------------------------------------------------------------------------
"  Keyboard mappings
" ------------------------------------------------------------------------

nmap <esc> <Nop>
map <esc> <Nop>
map <esc>^[ <esc>^[

" Tagbar toggle
nmap <C-b> :TagbarToggle<CR>

" Emmet expansion
imap hh <C-y>,
imap jj <C-y>,

" File management
map zz :w<CR>
map zx :wq!<CR>
map <c-q> <esc>:q!<CR>
map <c-c> yy
map <c-x> dd
map <c-d> yy p
"map <c-v> <esc>:set nopaste<CR> p :set nopaste<CR>A

" Vim buffer management
nnoremap ,q :bd<CR>
nnoremap ,w <C-w>v
nnoremap ,v <C-w>s
nnoremap ,, <C-w><C-w>

" Vim-Surround mapping
map ," ysiw"
map ,' ysiw'
map ,) ysiw)
map ,] ysiw]
map ,> ysiw>
map ,'' yss"
map ,]] yss]
map ,>> yss>
map , yss

" Commenting
map <c-k><c-c> \cc
map <c-k><c-u> \cu

" Snippets
imap <tab> <Plugin>snipMateNextOrTrigger
imap <c-,> <Plugin>snipMateNextOrTrigger

" Color Picker
let g:vcoolor_map = 'ç'
let g:vcoolor_lowercase = 1

" Buffer movement (NOTE: the characters map below are ALT + <key> combination)  
map ‘ :bnext<CR>  
map “ :bprevious<CR>
map ∑ :bd<CR>

" ------------------------------------------------------------------------
" Emmet Settings
" ------------------------------------------------------------------------
let g_user_emmet_install_global=0
"let g:user_emmet_leader_key=','
let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/snippets/customSnippets.json')), "\n"))
autocmd FileType html,css EmmetInstall

" ------------------------------------------------------------------------
" JavaScript related tools
" ------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_poulate_loc_list = 1
let g_syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_jshint_exec = "$HOME/.npm-packages/bin/jshint"
let g:syntastic_javascript_checkers = ["jshint"]

"ActivateAddons vim-snippets snipmate
let g:vim_json_syntax_conceal = 0

"let JSHintUpdate=1
"let JSHintUpdateWriteOnly=1
"au FileType javascript call JavaScriptFold()

" ------------------------------------------------------------------------
" Control-P settings
" ------------------------------------------------------------------------

" ignore the directories and files with the following extensions
set wildignore+=*/node_modules/*,/*bower_components/*,/*jspm_packages/*,*/lib/*,*/vendor/*,*/dist/**,*.so,*.swp,*.zip,*~
set runtimepath^=~/vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_show_hidden = 1

" ------------------------------------------------------------------------
" NERDTree related settings
" ------------------------------------------------------------------------
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ------------------------------------------------------------------------
" Autoformat plugin - used to format source files
" Supported formats: js css html
" ------------------------------------------------------------------------
noremap <C-f> :Autoformat<CR>
let g:autoformat_autoindent = 0

" stylus css pre-processor
autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

" Nerd-fonts
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1

" ------------------------------------------------------------------------
" Airline Configuration
" ------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
set encoding=utf8
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_detect_modified=1

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

"airline symbol
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme="dark"

let g:nodejs_complete_config = {
\  'max_node_compl_len': 15
\}

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" ------------------------------------------------------------------------
" Git Gutter
" ------------------------------------------------------------------------
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" ------------------------------------------------------------------------
"  You Complete Me
" ------------------------------------------------------------------------

let g:ycm_auto_trigger = 1
