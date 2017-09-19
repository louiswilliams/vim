if [[ `whoami` = "root" ]]; then
  echo "Do not run as root"
  exit
fi


mkdir -p vim/bundle

echo Downloading colorschemes
git clone https://github.com/flazz/vim-colorschemes.git vim
echo Downloading CtrlP
git clone https://github.com/ctrlpvim/ctrlp.vim.git vim/bundle/ctrlp.vim
echo Downloading Airline
git clone https://github.com/vim-airline/vim-airline.git vim/bundle/vim-airline
echo Downloading Plug
curl -fLo vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimrc

cp -R vim/*  ~/.vim

if [ -f ~/.vimrc ]; then
  echo .vimrc exists, moving to .vimrc.old
  mv ~/.vimrc ~/.vimrc.old 
fi

cp vimrc ~/.vimrc

echo Installing Plug plugins
vim +PluginInstall +qall

cd ~/.vim/plugged/YouCompleteMe/
./install.sh --clang-completer

cd -

echo Done
