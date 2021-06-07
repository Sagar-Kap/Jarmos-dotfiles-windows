noremap <Up> <NOP>                                          " Disable <Up> arrow button
noremap <Down> <NOP>                                        " Disable <Down> arrow button
noremap <Left> <NOP>                                        " Disable <Left> arrow button
noremap <Right> <NOP>                                       " Disable <Right> arrow button

nmap <silent> \ev :e $MYVIMRC<CR>                           " Press <E-V> should open up the Neovim config file.
nmap <silent> \sv :so $MYVIMRC<CR>                          " Press <S-V> in Normal mode should source the Neovim config file.
