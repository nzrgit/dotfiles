syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set ai
set vb
set nocompatible
set nohlsearch
set autoindent
set smartindent
set ruler
set incsearch
set fileformats=unix
set nosmarttab
let loaded_matchparen = 1
set background=dark
set encoding=utf8
set fileencodings=utf8
set termencoding=utf8
set enc=utf-8
set ffs=unix,dos
"filetype on
"filetype plugin on

"
" give a dialog when a command fails.
"
set confirm

"
" minibufexpl.vim
"
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

"
" Python
"
let python_highlight_all=1 "highlight everything possible in python
let python_highlight_space_errors=1 "except spacing issues

"
" Show extra spaces
"
let c_space_errors=1
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

"
" map the escape to '
"
":imap ` <esc>

"
" vimcommander.vim
"
noremap <silent> \M :cal VimCommanderToggle()<CR>

set nobackup

"
" buffer switching
"
nmap > :bn<CR>
nmap < :bp<CR>

augroup filetypedetect au BufNewFile,BufRead *.lsl setf lsl augroup END


au BufRead,BufNewFile *.ftl set filetype=ftl



if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
    setlocal completefunc=javacomplete#CompleteParamsInfo
endif

" Use for javat
if has("autocmd")
    augroup javat
        autocmd BufRead *.javat set filetype=java
    augroup END
endif

" Use for arff
if has("autocmd")
    augroup arff
        autocmd BufRead *.arff set syntax=arff
    augroup END
endif

" Use for tld files
if has("autocmd")
    augroup thtml
        autocmd BufRead *.tld set filetype=xml
    augroup END
endif

"
" remove ^M
"
fun RmCr()
    let oldLine=line('.')
    exe ":%s/\r//g"
    exe ':' . oldLine
endfun

"
" Remove trailing spaces
"
fun Rw()
    %s/\s*$//
    ''
endfun

