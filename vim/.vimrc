call plug#begin('~/.vim/plugged')


Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
Plug 'thaerkh/vim-workspace'
Plug 'jiangmiao/auto-pairs'
Plug 'hail2u/vim-css3-syntax'

" toggle nerdtree
nmap <F6> :NERDTreeToggle<CR>


call plug#end()

