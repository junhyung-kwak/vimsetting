
echo -e "> choose type of vim plug-in module(none/[vim-plug]/vundle) : "
read TYPE
TYPE=${TYPE:-vim-plug}

# install default vim
bash ./scripts/vim.install 

sudo apt install -y git
# copy (default & plug) settings to vimrc
cat settings/defalut.setting > $HOME/.vimrc
cat settings/plugrc/$TYPE.setting >> $HOME/.vimrc

# update color scheme
mkdir -p ${HOME}/.vim/colors/
cp ./settings/colors/* ${HOME}/.vim/colors/


# install plugins
bash ./scripts/plug.install $TYPE

# cocinstall
bash ./scripts/cocvim.install
