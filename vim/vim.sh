if [ ! -e "$HOME/.vim/pack/vivid/opt/Vivid.vim" ]; then
#    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    git clone https://github.com/axvr/vivid.vim ~/.vim/pack/vivid/opt/Vivid.vim
fi
if [ -e "$HOME/.vimrc" ]; then
    rm "$HOME/.vimrc"
fi

    cp "$PWD/vimrc" ~/.vimrc
    vim +PluginInstall +qall
