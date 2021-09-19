rm ~/.vimrc
rm ~/.zshrc
ln ./vimrc ~/.vimrc
ln ./zshrc ~/.zshrc



curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
