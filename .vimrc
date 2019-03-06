" Configuration file for vim
set modelines=0     " CVE-2007-2438
 
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
set backspace=2     " more powerful backspacing
 
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
 
" add for next lines
set tabstop=4
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
set number
if has("syntax")
	syntax on               " syntax highlighting
endif
set shiftwidth=4
set autoindent
set cindent
set paste
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
set laststatus=2
set statusline=\ %<%l:%v\ [%P]$%=%a\ %h%m%r\ %F\
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if ! exists("g:leave_my_cursor_position_alone") |
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal g'\"" |
colorscheme jellybeans
