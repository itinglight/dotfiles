# dotfiles

brew install google-chrome 
brew install figma youtube-dl typora  fliqlo visual-studio-code

brew install figma youtube-dl typora telegram-desktop fliqlo visual-studio-code


brew install tmux ranger tree
brew install node yarn 
brew install docker  postman maven@3.3 
brew install cmatrix 

brew install obs
#国内安装HomeBrew
`/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"`

#安装 oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## 安装 oh-my-zsh插件
命令高亮显示 zsh-syntax-highlighting
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
命令提示 zsh-autosuggestions
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`


# VIM
// 安装 vim -plug 
`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`


vim ~/.vimrc 

install : PlugInstall
Update : PlugUpdate
