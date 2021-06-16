#!/bin/bash
yum -y update

yum -y install git python3 zsh wget

# terminal
chsh -s /bin/zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
git clone https://github.com/powerline/fonts.git $ZSH/fonts
.$ZSH/fonts/install.sh

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH/custom/plugins/zsh-autosuggestions

mv ~/.zshrc ~/.zshrc_origin
ln -s ./oh-my-zsh/.zshrc ~/.zshrc
# vim config
mv ~/.vimrc ~/.vim_origin
ln ./vim/.vimrc ~/.vimrc
