set relativenumber
set bg=dark
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set cursorline
set t_Co=256
set incsearch
set ignorecase
set showmatch
set modifiable
set splitright
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ycm-core/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/UltiSnips'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required


call plug#begin('~/.vim/plugged')

Plug 'ghifarit53/tokyonight-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'townk/vim-autoclose'

call plug#end()

nmap <DOWN> :NERDTreeToggle<CR>
nmap <UP> :tabnew<CR>
let g:UltiSnipsExpandTrigger="<right>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

set termguicolors
colorscheme gruvbox
"colorscheme tokyonight
