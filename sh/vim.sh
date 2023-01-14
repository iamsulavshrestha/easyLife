#installing vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim



if [ -e "$HOME/.vimrc" ]; then
    rm "$HOME/.vimrc"
fi
    mkdir ~/.vim/vim.conf
    cp -r "$PWD/files/vim.conf" ~/.vim
    cp "$PWD/files/vimrc" ~/.vimrc
    vim +PlugInstall

cd ~/.vim/plugged/youcompleteme && python3 install.py --all
