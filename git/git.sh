git config --global credential.helper 'cache --timeout=78600'
git config --global help.autocorrect 1
git config --global user.email "iamsulavshrestha@gmail.com"
git config --global user.name "Sulav Shrestha"
cp $PWD/gitignore ~/.gitignore
git config --global core.excludesFile '~/.gitignore'
