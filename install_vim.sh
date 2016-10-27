git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/TiagoAssuncao/LocalFiles
cp LocalFiles/new_vimrc .vimrc
vim +PluginInstall +qall
git clone https://github.com/powerline/fonts
cd fonts/
sh install.sh

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp -f LocalFiles/.tmux.conf .
source ~/.bashrc

