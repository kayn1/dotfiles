let g:ruby_path="/usr/bin/ruby"

nnoremap <F3> :e $MYVIMRC<CR>

execute pathogen#infect()
call pathogen#infect()
set number
set nocompatible
syntax on
filetype plugin indent on


set cursorline
set guicursor=i:ver25-iCursor
set encoding=UTF-8

set swapfile
set dir=~/.swap-files
set nospell
set hlsearch

let g:ale_disable_lsp = 0
let g:ale_set_balloons = 1
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

call plug#begin('~/.vim/plugged')
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdcommenter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'tpope/vim-sensible'
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'ryanoasis/vim-devicons'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
  Plug 'mattn/emmet-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'dense-analysis/ale'
  Plug 'jonsmithers/vim-html-template-literals'
  Plug 'elixir-editors/vim-elixir'
  Plug 'vim-test/vim-test'
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
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'tpope/vim-liquid'
call vundle#end()

let g:coc_global_extensions = [
  \'coc-json',
  \'coc-git',
  \'coc-emmet',
  \'coc-eslint',
  \'coc-explorer',
  \'coc-css',
  \'coc-html',
  \'coc-solargraph',
  \'coc-tsserver',
  \'coc-go',
  \'coc-elixir',
  \'coc-deno'
  \]

set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

set regexpengine=2

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

let $FZF_DEFAULT_COMMAND = 'rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

let g:fzf_preview_window = 'right:60%'


nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>
nnoremap tn :tabnew <CR>

vnoremap <F5> :'<,'>w !xsel -b

let g:ale_linters = {
      \   'ruby': ['standardrb', 'rubocop'],
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint', 'tsserver', 'prettier'],
      \   'shell': ['shfmt'],
      \   'fish': ['fish'],
      \   'go': ['gofmt', 'golint']
      \}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace', 'prettier'],
\   'javascript': ['eslint', 'prettier'],
\   'ruby': ['rubocop'],
\   'shell': ['shfmt'],
\   'typescript': ['eslint', 'prettier'],
\   'go': ['gofmt', 'goimports']
\}
let g:ale_linters_explicit = 1


let g:prettier#config#trailing_comma = 'none'


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
let g:dracula_colorterm = 1
colorscheme dracula
highlight Normal ctermbg=None

nnoremap <CR> :noh<CR><CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> K :call ShowDocumentation()<CR>
nmap <silent> <Leader>h <Cmd>ALEHover<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

let g:NERDCustomDelimiters={
	\ 'javascript': { 'left': '//', 'right': '', 'leftAlt': '{/*', 'rightAlt': '*/}' },
\}

nnoremap <PageUp> <NoP>
nnoremap <PageDown> <Nop>
inoremap <PageUp> <NoP>
inoremap <PageDown> <Nop>

autocmd BufRead,BufNewFile *.arb setfiletype ruby

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:coc_explorer_global_presets = {
      \   '.vim': {
      \     'root-uri': '~/.vim',
      \   },
      \   'tab': {
      \     'position': 'tab',
      \     'quit-on-open': v:true,
      \   },
      \   'floating': {
      \     'position': 'floating',
      \     'open-action-strategy': 'sourceWindow',
      \   },
      \   'floatingTop': {
      \     'position': 'floating',
      \     'floating-position': 'center-top',
      \     'open-action-strategy': 'sourceWindow',
      \   },
      \   'floatingLeftside': {
      \     'position': 'floating',
      \     'floating-position': 'left-center',
      \     'floating-width': 50,
      \     'open-action-strategy': 'sourceWindow',
      \   },
      \   'floatingRightside': {
      \     'position': 'floating',
      \     'floating-position': 'right-center',
      \     'floating-width': 50,
      \     'open-action-strategy': 'sourceWindow',
      \   },
      \   'simplify': {
      \     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
      \   }
      \ }

nmap <space>ed :CocCommand explorer --preset .vim<CR>
nmap <space>e :CocCommand explorer<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

"List all presets
nmap <space>el :CocList explPresets
"Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

nnoremap <Leader>tn :tabnew <CR>

setlocal autoindent
setlocal cindent
setlocal smartindent

"  Parcel - hot module replacement
set backupcopy=yes

if &term =~# '256color' && ( &term =~# '^screen'  || &term =~# '^tmux' )
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

let test#strategy = "vimterminal"
let test#vim#term_position = "vertical"

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_calls = 1
let g:go_doc_popup_window = 1

