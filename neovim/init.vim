" Required & minimal options
set number relativenumber                               " Enables relative numbering on the left-hand side of the editor.
set clipboard=unnamedplus                               " Enables clipboard on Vim.
set hidden                                              " Hides the buffer & makes editing on Vim much faster.
set nowrap                                              " Doesn't let Vim wrap the texts & move it to the next line.
set backspace=indent,eol,start                          " Enables usage of <Backspace> which is disabled by default.
set lazyredraw                                          " Disables redrawing the screen when registers, macros & other stuff hasn't been typed yet.
set showmatch                                           " Show matching brackets.
set nohlsearch incsearch                                " Dynamically highlights the searched phrases as it's typed.
set ignorecase smartcase                                " Ignores capital or lower cases
set termguicolors                                       " Ensures colouring is right based on the terminal emulator used.
set tabstop=4 softtabstop=4 expandtab shiftwidth=4      " Ensures one <Tab> press is converted to four <Space>.
set nobackup nowritebackup noswapfile noundofile        " Ensures directories stay clean with no backup, swapfiles & related directories.
set noerrorbells visualbell t_vb=                       " Disables the audio of the errorbell but makes it visual. No clue what's supposed to happen.
set nostartofline                                       " Configures Vim to not navigate itself to the start of the line while navigating.
set shortmess=atI                                       " Disables the message on the startup screen.
set scrolloff=6                                         " Ensures the screen has at least 6 lines of code above the bottom while scrolling around.
set noshowmode                                          " Doesn't show the current mode Neovim is in.
set textwidth=0                                         " Disables Neovim to make the line go to the next line after reaching 80 characters.

filetype plugin indent on                               " Enables some configuration based on the filetype like 4 <Space> indent for Python files & so on.

if !exists("g:syntax_on")                               " Is supposed to enable Syntax highlighting but not sure what it does.
    syntax enable
endif

" ======================================================
" Add plugins
" ======================================================
call plug#begin(stdpath('data') . '/plugged')
Plug 'itchyny/lightline.vim'
" Plug 'godlygeek/tabular'                                " Formats tables
Plug 'morhetz/gruvbox'                                    " A warmer retro colorscheme with a lot of yellow contrast in it
Plug 'preservim/nerdtree'                                 " A better file explorer for Neovim.
Plug 'plasticboy/vim-markdown'                            " Markdown syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'}           " Code completion & LSP support like VSCode
" Plug 'SirVer/ultisnips'                                 " Code snippets for many languages
" Plug 'honza/vim-snippets'                               " List of snippets for the required languages
" Plug 'iamcco/markdown-preview.nvim                      " Live Markdown preview.
call plug#end()

" The current color scheme looks a bit too dark on the darker Windows Terminal.
" Need to figure a way out to cycle through many colorschemes or use Gruvbox.
" Following resources might be useful to cycle through many colour schemes & then eventually settling down on one some day.
" 1. https://github.com/flazz/vim-colorschemes
" 2. https://vim.fandom.com/wiki/Switch_color_schemes
colorscheme gruvbox                                         " A warm & retro colorscheme perfect for Neovim

" ======================================================
" Key mappings
" ======================================================
noremap <Up> <NOP>                                          " Disable <Up> arrow button
noremap <Down> <NOP>                                        " Disable <Down> arrow button
noremap <Left> <NOP>                                        " Disable <Left> arrow button
noremap <Right> <NOP>                                       " Disable <Right> arrow button

nmap <silent> \ev :e $MYVIMRC<CR>                           " Press <E-V> should open up the Neovim config file.
nmap <silent> \sv :so $MYVIMRC<CR>                          " Press <S-V> in Normal mode should source the Neovim config file.

" =======================================================
" Some global configurations
" =======================================================
let g:loaded_python_provider=0                              " Disables loading Python 2
let g:loaded_ruby_provider=0                                " Disables loading Ruby
let g:lightline = {'colorscheme': 'gruvbox'}                " Colour scheme for the Lightline plugin
highlight Normal guibg=NONE ctermbg=NONE                    " Makes Neovim background transparent

" =======================================================
" Resources to learn Neomvim (or Vim in general)
" =======================================================
" 1. https://danielmiessler.com/study/vim/
" 2. https://github.com/iggredible/Learn-Vim
