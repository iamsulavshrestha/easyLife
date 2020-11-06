#installing vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



if [ -e "$HOME/.vimrc" ]; then
    rm "$HOME/.vimrc"
fi
    cp -r "$PWD/vim.conf" ~/.vim/
    cp "$PWD/vim/vimrc" ~/.vimrc
    vim +PlugInstall
