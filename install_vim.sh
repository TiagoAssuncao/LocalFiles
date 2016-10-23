git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/TiagoAssuncao/LocalFiles
cp LocalFiles/new_vimrc .vimrc
vim +PluginInstall +qall
git clone https://github.com/powerline/fonts
cd fonts/
sh install.sh

touch ~/.tmux.conf
echo "set -g default-terminal 'screen-256color'" >> ~/.tmux.conf
echo "alias tmux='TERM=screen-256color-bce tmux' " >> ~/.bashrc
source ~/.bashrc

