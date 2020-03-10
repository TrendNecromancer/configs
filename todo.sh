# System update and upgrade
  
#export DEBIAN_FRONTEND=noninteractive

#sudo apt-get update -y

#sudo apt-get full-upgrade -y

#sudo apt autoremove -y

# Install oh-my-zsh and Geometry theme

#sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

#git clone https://github.com/geometry-zsh/geometry

#source /home/kali/.oh-my-zsh/themes/geometry/geometry.zsh

#cp /home/kali/configs/zshrc /home/kali/.zshrc

# Install cmake, i3

#sudo apt-get install cmake i3 -y

# Build vim from source with python support

git clone https://github.com/vim/vim /home/kali/vim

/home/kali/vim/configure --with-features=huge \
	--enable-multibyte \
	--enable-ruby-interp=yes \
	--enable-python3interp=yes \
	--with-python3-config-dir=$(python3-config --configdir) \
	--enable-perlinterp=yes \
        --enable-luainterp=yes \
        --enable-gui=gtk2 \
        --enable-cscope \
        --prefix=/usr/local
	
	
cd /home/kali/vim/

make # VIMRUNTIMEDIR=/usr/local/share/vim/vim82

sudo make install

# Install vimrc

#cp /home/kali/configs/vimrc /home/kali/.vimrc

# Install vundle

#git clone https://github.com/VundleVim/Vundle.vim.git /home/kali/.vim/bundle/Vundle.vim

# Install plugins

#vim +PluginInstall +qall

# Install YouCompleteMe

#/home/kali/.vim/bundle/YouCompleteMe/install.sh


