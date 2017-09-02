if [[ `whoami` = "root" ]]; then
  echo "Do not run as root"
  exit
fi


mkdir -p vim/bundle

echo Downloading bundles
git clone https://github.com/flazz/vim-colorschemes.git vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git vim/bundle/ctrlp.vim
git clone https://github.com/vim-airline/vim-airline.git vim/bundle/vim-airline

cp -R vim ~/.vim

if [ -f ~/.vimrc ]; then
  echo .vimrc exists, moving to .vimrc.old
  mv ~/.vimrc ~/.vimrc.old 
fi

cp vimrc ~/.vimrc

echo Done
