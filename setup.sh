ln -s $PWD/.gitignore_global ~
ln -s $PWD/.gitconfig ~
ln -s $PWD/.zshrc ~
ln -s $PWD/.vimrc ~
ln -s $PWD/.prettierrc ~

chsh -s $(which zsh)

echo "Setup completed ✅"
