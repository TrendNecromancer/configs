# System update and upgrade
  
export DEBIAN_FRONTEND=noninteractive

apt-get update -y

apt-get full-upgrade -y

apt autoremove -y

# Install oh-my-zsh and Geometry theme

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

git clone https://github.com/geometry-zsh/geometry

source /home/kali/.oh-my-zsh/themes/geometry/geometry.zsh

cp /home/kali/configs/zshrc /home/kali/.zshrc

# Install cmake, i3

apt-get install cmake i3

# Build vim from source with python support

git clone https://github.com/vim/vim /home/kali/vim

/home/kali/vim/configure --enable-python3interp

cd /home/kali/vim/

make

make install

# Install vimrc

cp vimrc /home/kali/.vimrc

# Install vundle

clone git clone https://github.com/VundleVim/Vundle.vim.git /home/kali/.vim/bundle/Vundle.vim

# Install plugins

vim +PluginInstall +qall

# Install YouCompleteMe

/home/kali/.vim/bundle/YouCompleteMe/install.sh


