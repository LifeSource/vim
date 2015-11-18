execute pathogen#infect()
syntax on
filetype plugin indent on
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme lifesource

" ------------------------------------------------------------------------
" Standard settings
" ------------------------------------------------------------------------
set nocompatible
set number
set showcmd
set showmode
set showmatch
set tabstop=4
set noswapfile
"set softtabstop=4
set shiftwidth=4
set expandtab
"set smarttab
set modeline
set nohidden
set autoindent
set smartindent
"set foldmethod=indent
set copyindent
set ignorecase
set incsearch
set hlsearch
set laststatus=2
set mouse=a
if has("mouse")
	set mouse=a
endif

runtime bundles/tplugin_vim/macros/tplugin.vim

" ------------------------------------------------------------------------
"  Keyboard mappings
" ------------------------------------------------------------------------

" Tagbar toggle
nmap <C-b> :TagbarToggle<CR>

" Emmet expansion
imap hh <C-y>,

" File management
map zz :w<CR>
map zx :wq!<CR>
map <c-q> <esc>:q!<CR>
map <c-c> yy
map <c-x> dd
map <c-d> yy p
map <c-v> <esc>:set nopaste<CR> p :set nopaste<CR>A

" Vim buffer management
nnoremap ,q <C-w>q
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

nmap <c-k><c-c> \cc
nmap <c-k><c-u> \cu


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
let g:syntastic_javascript_jshint_exec = "/Users/kenrick/.npm-packages/bin/jshint"
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
"map <c-f> :call JsBeautify()<cr>

" stylus css pre-processor
autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

" ------------------------------------------------------------------------
" Airline Configuration
" ------------------------------------------------------------------------

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_detect_modified=1
"let g:airline_powerline_fonts=1
let g:airline_symbols.branch = '⎇'
"let g:airline_left_sep = '▶'
let g:airline_theme="dark"

let g:nodejs_complete_config = {
\  'max_node_compl_len': 15
\}

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif


" make YCM compatible with UltiSnips (using supertab)
 let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
 let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
 let g:SuperTabDefaultCompletionType = '<C-n>'
 
" better key bindings for UltiSnipsExpandTrigger
 let g:snipMateVisual= "<tab>"
 let g:snipMateNextOrTrigger= "<tab>"
