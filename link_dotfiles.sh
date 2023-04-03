ln -s $PWD/.gitignore_global ~
ln -s $PWD/.gitconfig ~
ln -s $PWD/.profile ~
ln -s $PWD/.vimrc ~
ln -s $PWD/.prettierrc ~

mkdir ~/.config/yabai
ln -s $PWD/yabairc ~/.config/yabai

echo ✅ Dotfiles linked
