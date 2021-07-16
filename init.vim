"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set omnifunc=ale#completion#OmniFunc
    let g:ale_completion_enabled = 1
    let g:ale_completion_autoimport = 1
    let g:ale_sign_column_always = 1
    let g:ale_fix_on_save = 1
    let g:ale_sign_error = '✗'
    let g:ale_sign_warning = '⚠'

    let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'javascript': ['eslint'],
        \   'typescript': ['eslint','tslint', 'xo'],
        \   'css': ['stylelint', 'fecs'],
        \   'rust': ['rustfmt', 'rls'],
    \}

    let g:lightline = {
        \ 'colorscheme': 'PaperColor'
    \}

    let g:lightline.component_expand = {
        \  'linter_checking': 'lightline#ale#checking',
        \  'linter_infos': 'lightline#ale#infos',
        \  'linter_warnings': 'lightline#ale#warnings',
        \  'linter_errors': 'lightline#ale#errors',
        \  'linter_ok': 'lightline#ale#ok',
    \ }

    let g:lightline.component_type = {
        \     'linter_checking': 'right',
        \     'linter_infos': 'right',
        \     'linter_warnings': 'warning',
        \     'linter_errors': 'error',
        \     'linter_ok': 'right',
    \}


    let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ]
        \}



    let g:lightline#ale#indicator_checking = "🗘"
    let g:lightline#ale#indicator_infos = "ℹ"
    let g:lightline#ale#indicator_warnings = "⚠"
    let g:lightline#ale#indicator_errors = "✗"
    let g:lightline#ale#indicator_ok = "✓"

    let g:fzf_layout = { 'down': '~20%' }

    call plug#begin('~/.local/share/nvim/plugged')
        Plug 'cespare/vim-toml'
        Plug 'glepnir/oceanic-material'
        Plug 'jiangmiao/auto-pairs'
        Plug 'dense-analysis/ale'
        Plug 'itchyny/lightline.vim'
        Plug 'mattn/emmet-vim'
        Plug 'maximbaz/lightline-ale'
        Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plug 'junegunn/fzf.vim'
        Plug 'scrooloose/nerdtree'
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        Plug 'Xuyuanp/nerdtree-git-plugin'
        Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
        Plug 'airblade/vim-gitgutter'
        Plug 'scrooloose/nerdcommenter'
        Plug 'ryanoasis/vim-devicons'

    call plug#end()

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => General
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set hidden
    set history=500
    filetype plugin indent on
    set autoread
    set laststatus=2
    set noshowmode
    au FocusGained,BufEnter * checktime

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => VIM user interface
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set so=18
    set number relativenumber
    set wildmenu
    set ruler
    set cmdheight=1
    set hid
    set backspace=eol,start,indent
    set ignorecase
    set smartcase
    set hlsearch
    set incsearch
    set lazyredraw
    set magic
    set showmatch
    set mat=1

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Colors and Fonts
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    syntax enable
    set background=dark
    colorscheme oceanic_material
    set encoding=utf8
    set ffs=unix,dos,mac
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Files, backups and undo
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set nobackup
    set nowb
    set noswapfile

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Text, tab and indent related
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set expandtab
    set smarttab
    set shiftwidth=4
    set tabstop=4
    set lbr
    set tw=500
    set ai
    set si
    set wrap

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Moving around, tabs, windows and buffers
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    noremap <SPACE> <Nop>
    noremap <Up>    :10winc -<CR>
    noremap <Down>  :10winc +<CR>
    noremap <Left>  :10winc <<CR>
    noremap <Right> :10winc ><CR>

    let mapleader = ","

    nmap <leader>r :NERDTreeFocus<cr>R<c-w><c-p>
    nmap <leader>w :w!<cr>
    nmap <leader>t :belowright split<cr>:terminal<cr>:10winc -<cr>
    nmap <leader>n :NERDTree<cr>
    nmap <leader>o :tabnew<cr>

    map <C-j> <C-W>j
    map <C-k> <C-W>k
    map <C-h> <C-W>h
    map <C-l> <C-W>l

    command Setup e ~/.config/nvim/init.vim
