" Note {
" A Simple vimrc, bring some Spaceamcs key to vim.
" Author: __JM_Joy__
" }

" Vundle Plugin {
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " Plugin list {
        Plugin 'scrooloose/nerdtree'
        Plugin 'jistr/vim-nerdtree-tabs'
        Plugin 'flazz/vim-colorschemes'
        Plugin 'tpope/vim-surround'
        Plugin 'jiangmiao/auto-pairs'
        Plugin 'ctrlpvim/ctrlp.vim'
        Plugin 'bling/vim-airline'
        Plugin 'bling/vim-bufferline'
        Plugin 'Lokaltog/vim-easymotion'
        Plugin 'gcmt/wildfire.vim'
        Plugin 'scrooloose/syntastic'
        Plugin 'tpope/vim-fugitive'
        Plugin 'mattn/webapi-vim'
        Plugin 'scrooloose/nerdcommenter'
        Plugin 'tpope/vim-commentary'
        Plugin 'godlygeek/tabular'
        Plugin 'Shougo/neocomplete.vim.git'
        Plugin 'Shougo/neosnippet'
        Plugin 'Shougo/neosnippet-snippets'
        Plugin 'honza/vim-snippets'
        Plugin 'beyondwords/vim-twig'
        Plugin 'elzr/vim-json'
        Plugin 'amirh/HTML-AutoCloseTag'
        Plugin 'gorodinskiy/vim-coloresque'
        Plugin 'ervandew/supertab'
    " }

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
" }

" Generate {
    " Avoid `Escape`
    inoremap fd <Esc>
    vnoremap fd <Esc>

    " Leader
    noremap <Space> <nop>
    let mapleader=' '
    let g:mapleader=' '

    set number
    set autoread

    set so=3 " Set cursor - when moving vertically using j/k
    set cmdheight=1 " Height of the command bar

    vnoremap > >gv
    vnoremap < <gv

    let $LANG='en' " Avoid garbled characters in Chinese language windows OS
    set langmenu=en

    set wildmenu " Turn on the WiLd menu

    set ruler "Always show current position

    set hid " A buffer becomes hidden when it is abandoned

    " Configure backspace so it acts as it should act
    set backspace=eol,start,indent
    set whichwrap+=<,>,h,l

    set ignorecase " Ignore case when searching
    set smartcase " When searching try to be smart about cases
    set hlsearch " Highlight search results
    set incsearch " Makes search act like search in modern browsers
    set lazyredraw " Don't redraw while executing macros (good performance config)
    set magic " For regular expressions turn magic on
    set showmatch " Show matching brackets when text indicator is over them
    set mat=2 " How many tenths of a second to blink when matching brackets

    " No annoying sound on errors
    set noerrorbells
    set novisualbell
    set t_vb=
    set tm=500

    " Add a bit extra margin to the left
    set foldcolumn=1

    syntax enable " Enable syntax highlighting

    set encoding=utf8 " Set utf8 as standard encoding and en_US as the standard language

    set ffs=unix,dos,mac " Use Unix as the standard file type

    " Turn backup off, since most stuff is in SVN, git et.c anyway...
    set nobackup
    set nowb
    set noswapfile

    " Use spaces instead of tabs
    set expandtab
    set smarttab

    " 1 tab == 4 spaces
    set shiftwidth=4
    set tabstop=4

    set ai "Auto indent
    set si "Smart indent
    set nowrap "NoWrap lines

    " Disable highlight when <leader><cr> is pressed
    map <silent> <leader><cr> :noh<cr>
" }

" Spacemacs Style {
    " file
    nnoremap <leader>fs :w<cr>

    " quit
    nnoremap <leader>qq :qa<cr>

    " window
    noremap <leader>ww <C-W>w
    noremap <leader>wh <C-W>h
    noremap <leader>wj <C-W>j
    noremap <leader>wk <C-W>k
    noremap <leader>wl <C-W>l

    " buffer
    noremap <leader>bd :Bclose<cr>

    " tab
    noremap <leader>tn :tabnew<cr>
    noremap <leader>to :tabonly<cr>
    noremap <leader>tc :tabclose<cr>
    noremap <leader>tm :tabmove
    noremap <leader>t, :tabprevious<cr>
    noremap <leader>t. :tabnext<cr>

    " personal
    noremap <leader>od "+d
    noremap <leader>oy "+y
    noremap <leader>op "+p
    noremap <leader>oD "+D
    noremap <leader>oY "+Y
    noremap <leader>oP "+P
" }

" GUI {
if has("gui_running")
    set guioptions=
    set t_Co=256
    set guitablabel=%M\ %t

    set guifont=WenQuanYi\ Micro\ Hei\ Mono\ 10,Consolas:h11:cANSI,Monospace\ 11,Source\ Code\ Pro:h11,Bitstream\ Vera\ Sans\ Mono:h11
endif
" }

" Plugin configuration {
    " ColorSchemes {
      try
          colorscheme badwolf
      catch
          colorscheme evening
      endtry
    " }

    " NERDTree {
        let NERDTreeShowBookmarks=1
        let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
        let NERDTreeChDirMode=0
        let NERDTreeMouseMode=2
        let NERDTreeShowHidden=1

        let g:NERDTreeMapJumpFirstChild=''
        let g:NERDTreeMapJumpLastChild=''
    " }

    " vim-nerdtree-tabs {
        map <leader>ft <Plug>NERDTreeTabsToggle<CR>
        let g:nerdtree_tabs_open_on_gui_startup=0
    " }

    " neocomplete {
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

        " Enable heavy omni completion.
        if !exists('g:neocomplete#sources#omni#input_patterns')
          let g:neocomplete#sources#omni#input_patterns = {}
        endif
    " }

    " neosnippet {
        imap <C-k>     <Plug>(neosnippet_expand_or_jump)
        smap <C-k>     <Plug>(neosnippet_expand_or_jump)
        xmap <C-k>     <Plug>(neosnippet_expand_target)
    " }

    " easymotion { 
        map <leader>y <Plug>(easymotion-j)
        map <leader>Y <Plug>(easymotion-k)
        map <leader><S-Space> <Plug>(easymotion-b)
        map <leader><Space> <Plug>(easymotion-w)
    " }

" }

