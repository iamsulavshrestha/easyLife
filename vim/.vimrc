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
Plug 'shawncplus/phpcomplete.vim'
Plug 'beyondwords/vim-twig'


" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
" Also add Glaive, which is used to configure codefmt's maktaba flags. See
" `:help :Glaive` for usage.
Plug 'google/vim-glaive'


"key map for nerdtree
nmap <F6> :NERDTreeToggle<CR>

let g:phpcomplete_mappings = {
  \ 'jump_to_def': ',g',
  \ 'jump_to_def_tabnew': ',t',
  \ }

call plug#end()


" the glaive#Install() should go after the "call vundle#end()"
call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"

