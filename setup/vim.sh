if [ ! -e "$HOME/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
if [ -e "$HOME/.vimrc" ]; then
    rm "$HOME/.vimrc"
fi
if [ ! -h "$HOME/.vimrc" ]; then
    ln -s  ~/workspaces/bash/conf/vimrc ~/.vimrc
    vim +PluginInstall +qall
fi
