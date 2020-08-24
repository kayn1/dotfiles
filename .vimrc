let g:ruby_path="/usr/bin/ruby"

nnoremap <F3> :e $MYVIMRC<CR>

execute pathogen#infect()
call pathogen#infect()
syntax on
set number
set nocompatible
filetype off

set cursorline
set guicursor=i:ver25-iCursor
set termguicolors
set encoding=UTF-8

set swapfile
set dir=~/.swap-files
set nospell
set hlsearch

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf'
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-sensible'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ryanoasis/vim-devicons'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'terryma/vim-multiple-cursors'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
call plug#end()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-fugitive'
call vundle#end()

colorscheme dracula

set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab
let g:NERDTreeFileExtensionHighlightFullName = 1
autocmd vimenter * NERDTree


map <C-i> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

map <leader>r :NERDTreeFind<cr>

let NERDTreeShowHidden=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

set regexpengine=1

set noballooneval
let g:netrw_nobeval = 1

set list          " Display unprintable characters f12 - switches
set listchars=tab:•\ ,trail:•,extends:»,precedes:« " Unprintable chars mapping

nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <C-S> :update<cr>


set tags=tags

if (has("termguicolors"))
  set termguicolors
endif

if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;orange\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;white\x7"
  silent !echo -ne "\033]12;orange\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
endif



hi Visual          guifg=#000000 guibg=#FD971F


let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let g:fzf_preview_window = 'right:60%'

nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew <bar> :NERDTreeToggle<CR>

vnoremap <F5> :'<,'>w !xsel -b

let g:ale_linters = {
      \   'ruby': ['standardrb', 'rubocop'],
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint', 'prettier'],
\   'ruby': ['rubocop']
\}

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

set hidden

let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:ale_echo_cursor = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 1

set redrawtime=10000
syntax sync fromstart

" \cc
map <Leader>cc :cwindow<CR>:cc<CR><c-w>bz<CR><CR>
" \cn
map <Leader>cn :cwindow<CR>:cn<CR><c-w>bz<CR><CR>
" \cp
set cmdheight=2
map <Leader>cp :cwindow<CR>:cp<CR><c-w>bz<CR><CR>

set relativenumber
set number
set number relativenumber

let g:NERDSpaceDelims = 1

set guifont=Hack\ Nerd\ Font:h12
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

nnoremap <CR> :noh<CR><CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}
