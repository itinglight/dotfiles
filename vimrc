 " Configuration file for vim
"     	 ____
"       |    |
"       |    |
"       |    |
"       |    |
"       |    |
"       |    |
"       |    |
"       |    |
"       |    |
"       |    |
"       |    |
"       |____|

syntax on
set modelines=0		" CVE-2007-2438
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set cursorline
set cursorcolumn
set number
set t_Co=256
" set shell =bash\ -i
set shiftwidth=4            "自动缩进时的空白长度

"setting coding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr
set fileencoding=utf-8


" Don't write backup file if vim is being called by "crontab -e"
" au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
" au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

call plug#begin('~/.vim/plugged')
"   " Make sure you use single quotes
"   " Unmanaged plugin (manually installed and updated)
    Plug 'Lokaltog/vim-powerline'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}
    Plug '/usr/local/opt/fzf'
    Plug 'junegunn/fzf.vim'
call plug#end()


" fzf seting...  ctrlP plug
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }





