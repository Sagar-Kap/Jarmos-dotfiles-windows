" ======================================================
" Add plugins
" ======================================================
call plug#begin(stdpath('data') . '/plugged')
Plug 'pprovost/vim-ps1'                                 " Plugin for PowerShell scripting
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'                                  " A warmer retro colorscheme with a lot of yellow contrast in it
Plug 'preservim/nerdtree'                               " A better file explorer for Neovim.
Plug 'plasticboy/vim-markdown'                          " Markdown syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': elease'}           " Code completion & LSP support like VSCode
call plug#end()

" More colour schemes are available at: https://github.com/flazz/vim-colorschemes
colorscheme gruvbox                                     " A warm & retro colorscheme perfect for Neovim

" ======================================================
" Key mappings
" ======================================================
" Disables Arrow Keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Key mappings for easier editing & sourcing of .vimrc file
nnoremap <silent> \ev :e $MYVIMRC<CR>
nnoremap <silent> \sv :so $MYVIMRC<CR>

" Toggles NERDTree File Explorer with Ctrl + b similar to VSCode
nnoremap <C-b> :NERDTreeToggle<CR>

" Uppercase a word
" nnoremap <C-U> vwU<Esc>

" =======================================================
" Some global configurations
" =======================================================
let g:netrw_menu=0                                       " Disable Netrw built-in plugin for Neovim File Explorer
let g:loaded_python_provider=0                           " Disables loading Python 2
let g:loaded_ruby_provider=0                             " Disables loading Ruby
let g:lightline = {'colorscheme': 'grox'}                " Colour scheme for the Lightline plugin
let g:gruvbox_contrast_dark='hard'                       " Increases the dark contrast of the gruvbox colorscheme
let g:vim_markdown_folding_disabled=1                    " List of files And/or directories NERDTree will ignore
let NERDTreeAutoCenterThreshold = 6                      " Ensures the cursor is sufficiently centered in a NERDTree window
let NERDTreeNaturalSort = 1                              " Ensures NERDTree nodes are sorted properly
let NERDTreeQuitOnOpen = 3                               " Closes the NERDTree window after opening a file or a bookmark
let NERDTreeWinPos = 'right'                             " Opens the NERDTree window on the right side for convenience
let NERDTreeCascadeSingleChildDir = 0                    " Enables to NERDTree to show directories with single child as well
let NERDTreeAutoDeleteBuffer = 1                         " Automatically closes a buffer when a file is deleted

" Enables a transparent background within Neovim
highlight Normal guibg=NONE ctermbg=NONE

" =======================================================
" RESOURCES To learn NEOMVIM (or Vim in general)
" =======================================================
" 1. https://danielmiessler.com/study/vim
" https://learnvimscriptthehardway.stevelosh.com

" Some minimal & required settings
set number relativenumber numberwidth=1                 " Enables & adjusts the column number on the left side
set nowrap                                              " Disable wordwrap globally
set showmatch                                           " Show matching brackets.
set clipboard=unnamedplus                               " Enables clipboard on Vim.
set hidden                                              " Hides the buffer & makes editing on Vim much faster.
set nowrap                                              " Doesn't let Vim wrap the texts & move it to the next line.
set backspace=indent,eol,start                          " Enables usage of <Backspace> which is disabled by default.
set lazyredraw                                          " Disables redrawing the screen when registers, macros & other stuff hasn't been typed yet.
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
