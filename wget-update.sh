SUDO=''
if (( $EUID != 0 )); then
	SUDO='sudo'
fi

# update SSH keys
echo "Updating ssh authorized keys"
wget -O ~/.ssh/authorized_keys https://raw.githubusercontent.com/wsh32/config/master/.ssh/authorized_keys

# update screen config
echo "Updating screenrc config"
wget -O ~/.screenrc https://raw.githubusercontent.com/wsh32/config/master/.screenrc

# update vim config
echo "Updating vimrc config"
wget -O ~/.vimrc https://raw.githubusercontent.com/wsh32/config/master/.vimrc

# vundle plugin update
vim +PluginInstall +qall
