git config --global credential.helper 'cache --timeout=78600'
git config --global help.autocorrect 1
git config --global user.email "connect@sulav.name.np"
git config --global user.name "Sulav Shrestha"
cp $PWD/files/gitignore ~/.gitignore_global
cp $PWD/files/gitconfig ~/.gitconfig
git config --global core.excludesfile ~/.gitignore_global
