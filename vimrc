" Start NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible 
  set runtimepath+=$HOME/.vim/bundle/neobundle.vim
endif

" Required:
call neobundle#begin(expand('$HOME/.vim/bundle'))
" Let NeoBundle manage NeoBundle. Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neocomplete.vim', { 'rev' : 'ver.2.1' }
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'bling/vim-airline', { 'rev': 'v0.8' }
NeoBundle 'dgryski/vim-godef'
NeoBundle 'elzr/vim-json'
NeoBundle 'fatih/vim-go', { 'rev': 'v1.8' }
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'godlygeek/tabular'
NeoBundle 'jstemmer/gotags', { 'rev': 'v1.3.0' }
NeoBundle 'kien/ctrlp.vim', { 'rev': '1.79' }
NeoBundle 'klen/python-mode', { 'rev': '0.8.1' }
NeoBundle 'majutsushi/tagbar', { 'rev': 'v2.6.1' }
NeoBundle 'nanotech/jellybeans.vim', { 'rev': 'v1.5' }
NeoBundle 'oblitum/rainbow'
NeoBundle 'saltstack/salt-vim'
" Disabled because it was causing problems with included HTML plugin
" NeoBundle 'othree/html5.vim', { 'rev': '0.27' }
NeoBundle 'pangloss/vim-javascript', { 'rev': 'v0.9.0' }
NeoBundle 'scrooloose/nerdcommenter', { 'rev': '2.3.0' }
NeoBundle 'scrooloose/syntastic', { 'rev': 'v0.5.7' }
NeoBundle 'tomasr/molokai'
NeoBundle 'tpope/vim-fugitive', { 'rev': 'v2.2' }
NeoBundle 'tpope/vim-ragtag', { 'rev': 'v2.0' }
NeoBundle 'tpope/vim-surround', { 'rev': 'v2.1' }

" Required:
call neobundle#end()
" Required:
syntax on
filetype plugin indent on
" If there are uninstalled bundles found on startup, this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts--------------------------------

" uncomment this to profile your vim and find resource hogs
" profile start profile.log
" profile func *
" profile file *
" after quitting run the following commands
" profile pause
" noautocmd qall!

" Disabling vim's startup message
set shortmess=at 

" Enable relative line numbers
" set relativenumber

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

let g:neocomplete#enable_auto_select = 1

" Change default colorscheme
set background=dark
colorscheme jellybeans 

" Disable code folding
set nofoldenable

" Tagbar
nmap <F4> :TagbarToggle<CR>

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_echo_current_error = 1
let g:syntastic_enable_highlighting = 1
" Syntastic fixes for vim-go
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
" Fix for GoBuild or GoTest output window
" let g:go_list_type = "quickfix"

" Ident shortcuts
vmap <D-]> >gv
vmap <D-[> <gv

" Vim-indent-guides
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey
let g:indent_guides_auto_colors=0
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

" Enable ruler
set ruler
" Set history size
set history=100
" Enable search highlighting
set hlsearch
" Add global search/replace as default
set gdefault
" Highlight dynamically as pattern is typed
set incsearch
" Expand tabs to spaces
set expandtab
" Set tab size
set tabstop=4
" Set expanded tab size
set shiftwidth=4
" Display right column/gutter
set colorcolumn=120
" Max syntax column 
set synmaxcol=300
" Automatically show matching brackets
set showmatch
" Backspace setup
set backspace=indent,eol,start
" Disable old vi compatibility
set nocompatible
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Optimize for fast terminal connections
set ttyfast
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don't add empty newline at EOL
set binary
set noeol
" Use F2 to toggle pastemode and avoid breaking pasted content
set pastetoggle=<F2>
" Respect modeline in files
set modeline
set modelines=4
" Enable line numbers
set number
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Start scrolling three lines before the horizontal window border
set scrolloff=3
" Disable scratch preview area
set completeopt-=preview

" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor=getpos(".")
	let old_query=getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" For gotags
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

" Rainbow
let g:rainbow_active = 1

" Netrw Style Listing
let g:netrw_liststyle = 3
nnoremap <Leader><Leader> :TagbarOpen<CR><C-W>l<C-W>s:e .<CR><C-W>h:let g:netrw_chgwin=winnr()<CR><C-W>l

" Tab/Spaces
au FileType python setl sw=4 sts=4 et
au FileType php setl sw=4 sts=4 et
au FileType javascript setl sw=4 sts=4 et
au FileType ruby setl sw=2 sts=2 et
au FileType css setl sw=2 sts=2 et
au FileType xml setl sw=2 sts=2 et
au FileType html setl sw=2 sts=2 et
au FileType sls setl sw=2 sts=2 et

" Map extensions
au BufRead,BufNewFile *.jinja set filetype=sls
au BufRead,BufNewFile Fabfile set filetype=python

" JavaScript
let javascript_enable_domhtmlcss = 1
let b:javascript_fold = 1
let g:javascript_conceal = 1

map <c-f> :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>

" vim-go
let g:go_auto_type_info = 0
let g:go_play_open_browser = 1
let g:go_fmt_fail_silently = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" vim-json
let g:vim_json_syntax_conceal = 0

" vim-gitgutter
let g:gitgutter_max_signs = 5000
