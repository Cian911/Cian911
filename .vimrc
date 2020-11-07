set nocompatible
filetype off

" set termguicolors
filetype plugin indent on

set updatetime=250
set fenc=utf-8
set clipboard+=unnamedplus
set syntax=enable
" set colorcolumn=72
set cursorline
set autoindent expandtab tabstop=2 shiftwidth=2
set list
set listchars=tab:\|·,trail:¶
set t_Co=256
set title

" yaml syntax colorize
au BufNewFile,BufRead *.yaml,*.yml setf yaml

" Start nerdtree when vim starts.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
" Show dotfiles in NerdTree
let NERDTreeShowHidden=1
let g:go_fmt_command = "goimports"

" Plugins for Vim
call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()

" nerdcommenter Config
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" vim-go Config
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_format_strings = 1
let g:go_auto_type_info = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
let g:go_metalinter_autosave = 0

