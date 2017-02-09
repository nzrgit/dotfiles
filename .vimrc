
execute pathogen#infect()

syntax on
syntax enable
set hidden
set ruler
set fileformats=unix
set nosmarttab
set nocompatible
set nohlsearch
set incsearch
set tabstop=4
set shiftwidth=4
set background=dark
colorscheme solarized
set completeopt-=preview

set encoding=utf8
set fileencodings=utf8
set termencoding=utf8
set enc=utf-8
set ffs=unix,dos

set t_Co=256

let g:tmux_navigator_save_on_switch = 1
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>


"set cmdheight=2

" solarized options
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_bold=0
let g:solarized_termtrans=1

let loaded_matchparen = 1

let g:neocomplete#enable_at_startup = 1

filetype plugin indent on

" vimcommander.vim - https://github.com/lpenz/vimcommander
noremap <silent> \M :cal VimCommanderToggle()<CR>

set nobackup

" minibufexpl.vim
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Go
let g:go_fmt_command = "gofmt"
let g:go_disable_autoinstall = 0
let g:go_fmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" remove ^M
fun RmCr()
    let oldLine=line('.')
    exe ":%s/\r//g"
    exe ':' . oldLine
endfun

" Remove trailing spaces
fun Rw()
    %s/\s*$//
    ''
endfun

" Show extra spaces
let c_space_errors=1
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/


