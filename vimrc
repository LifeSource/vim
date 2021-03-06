execute pathogen#infect()
call pathogen#helptags()
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

autocmd BufRead,BufNewFile *.scss,*.styl,*.md,*.css setlocal spell


set autoread
au CursorHold * checktime
"set list
set listchars=eol:⏎,space:¬

set nocompatible
set number " shows line number on the side
set showcmd
set showmode " show the VIM mode you are currently in
set showmatch
set noswapfile " don't create swap files ~.swp
"set noexpandtab
"set copyindent
"set preserveindent
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
"set smarttab
set modeline
set nohidden
set ignorecase
set incsearch	" incremental search
set hlsearch	" highlight search result
set laststatus=2
"set foldmethod=indent
set foldmethod=syntax
set foldcolumn=3
set foldlevelstart=20

" ensure number formats are decimals regardless
set nrformats=

"if has("mouse")
set mouse=a
"endif

runtime bundles/tplugin_vim/macros/tplugin.vim

" clipboard setting for copy and paste
"set clipboard=unnamedplus

" ------------------------------------------------------------------------
"  Keyboard mappings
" ------------------------------------------------------------------------
map <esc>^[ <esc>^[
" Copy and paste
vmap <C-d> :put +<CR>
imap <C-d> :put +<CR>
nmap <C-d> :put +<CR>

" Tagbar toggle
nmap <C-b> :TagbarToggle<CR>

" Emmet expansion
vmap hh <C-y>,
imap hh <C-y>,

" Search
nnoremap <F3> :set hlsearch!<CR>

" File management
map zz :w<CR>
map zx :wq!<CR>

" Commenting
imap <C-_> <Esc> gcc
nmap <C-_> <Esc> gcc
vmap <C-_> <Esc> gcc

" Line movement
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

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
map ,d ds
map ,d" ds"
map ,d( ds(
map ,d' ds'
map ,d[ ds[

" block foldiing
map <c-l> <ESC>:set list!<CR>

" Commenting

" Snippets
imap jj <Plug>snipMateNextOrTrigger
imap <tab> <Plug>snipMateNextOrTrigger

" Color Picker
let g:vcoolor_map = 'ç'
let g:vcoolor_lowercase = 1

" Buffer movement (NOTE: the characters map below are ALT + <key> combination)
" ‘ => ALT + ] and “ => ALT + [
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

" Typescript
let g:typescript_compiler_binary = 'tsc'
let g:syntastic_typescript_tsc_fname=''

let g:syntastic_always_poulate_loc_list = 1
let g_syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exec = "$HOME/.npm-packages/bin/eslint"
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_scss_checkers = ["scss_lint"]


let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] " You shouldn't use 'tsc' checker.

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"


function! ToggleErrors()
  let old_last_winnr = winnr('$')
  lclose
  if old_last_winnr == winnr('$')
    " Nothing was closed, open syntastic error location panel
    Errors
  endif
endfunction

nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>
nnoremap <silent> <C-g> :lnext<CR>

"ActivateAddons vim-snippets snipmate
let g:vim_json_syntax_conceal = 0

" ------------------------------------------------------------------------
" Control-P settings
" ------------------------------------------------------------------------
" ignore the directories and files with the following extensions
set wildignore+=*/node_modules/*,/*bower_components/*,/*jspm_packages/*,/*platforms/*,*/vendor/*,*.so,*.swp,*.zip,*~
set runtimepath^=~/vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_show_hidden = 1

" ------------------------------------------------------------------------
" NERDTree related settings
" ------------------------------------------------------------------------
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
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
let g:formatterpath = ["${HOME}/.npm-packages/lib/node_modules/js-beautify/js/lib"]

" Nerd-fonts
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1

" ------------------------------------------------------------------------
" Airline Configuration
" ------------------------------------------------------------------------
set encoding=utf8
let g:airline_theme="dark"
let g:airline_detect_modified=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

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

" airline symbol
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" ------------------------------------------------------------------------
" Git Gutter
" ------------------------------------------------------------------------
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" ------------------------------------------------------------------------
"  You Complete Me
" ------------------------------------------------------------------------
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

let g:nodejs_complete_config = {
      \  'max_node_compl_len': 5
      \}

"let g:ycm_min_num_of_chars_for_completion=5
let g:ycm_auto_trigger = 1
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

nnoremap <c-r> :TernRename <CR>
nnoremap <c-t> :TernDef <CR>
"nnoremap <c-a> :TernRefs <CR>

" ------------------------------------------------------------------------
" IndentLine Plugin Settings
" ------------------------------------------------------------------------
"let g:indentLine_color_term = 239
"let g:indentLine_enabled = 1
"nnoremap <c-j> :IndentLinesToggle<CR>

" ------------------------------------------------------------------------
"  Abbreviation
" ------------------------------------------------------------------------
iabbr teh the
iabbr wehn when
iabbr myemail kenrick.wu@gmail.com
iabbr myname Kenrick Wu
iabbr phps <?php ?>

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" ------------------------------------------------------------------------
"  Typescript specific
" ------------------------------------------------------------------------
autocmd FileType ts UltiSnipsAddFileTypes typescript
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
autocmd FileType typescript setlocal completeopt+=menu,preview
" disable syntastic on the statusline
let g:statline_syntastic = 0

" Tsuquoyomi plugin configuration
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_auto_open = 1
let g:tsuquyomi_use_local_typescript = 0
