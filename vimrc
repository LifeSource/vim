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

"set autoread
"au CursorHold * checktime

set nocompatible
set number " shows number on the side
set showcmd
set showmode
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

" ensure number formats are decimals regardless
set nrformats=

"if has("mouse")
set mouse=a
"endif

runtime bundles/tplugin_vim/macros/tplugin.vim

" clipboard setting for copy and paste
set clipboard=unnamed

" ------------------------------------------------------------------------
"  Keyboard mappings
" ------------------------------------------------------------------------
map <esc>^[ <esc>^[

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
map <c-q> <esc>:q!<CR>
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
map <c-l> <ESC>zfap

" Commenting


" Snippets
imap jj <Plug>snipMateNextOrTrigger

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

let g:syntastic_always_poulate_loc_list = 1
let g_syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_eslint_exec = "$HOME/.npm-packages/bin/eslint"
let g:syntastic_javascript_checkers = ["eslint"]
let g:syntastic_scss_checkers = ["scss_lint"]

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
set wildignore+=*/node_modules/*,/*bower_components/*,/*jspm_packages/*,/*platforms/*,*/lib/*,*/vendor/*,*.so,*.swp,*.zip,*~
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
let g:formatterpath = ["~/Users/kenrick/.npm-packages/lib/node_modules/js-beautify/js/lib"]

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
let g:ycm_min_num_of_chars_for_completion=10
let g:ycm_auto_trigger = 1

" ------------------------------------------------------------------------
" IndentLine Plugin Settings
" ------------------------------------------------------------------------
let g:indentLine_color_term = 239
let g:indentLine_enabled = 1
nnoremap <c-j> :IndentLinesToggle<CR>

" ------------------------------------------------------------------------
"  Abbreviation
" ------------------------------------------------------------------------
iabbr teh the
iabbr wehn when
iabbr myemail kenrick.wu@gmail.com
iabbr myname Kenrick Wu
iabbr phps <?php ?>

let g:EditorConfig_exclude_patterns = ['fugitive://.*']
