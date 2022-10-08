
echo -e "> choose type of vim plug-in module(none/vim-plug/vundle) : "
read TYPE

# install default vim
bash ./scripts/vim.install 

# copy (default & plug) settings to vimrc
echo settings/vimrc > $HOME/.vimrc
echo settings/plugrc/$TYPE.setting >> $HOME/.vimrc

# update color scheme
mkdir -p ${HOME}/.vim/colors/
cp ./settings/colors/* ${HOME}/.vim/colors/


# install plugins
bash ./scripts/plug.install $TYPE

# cocinstall
bash ./scripts/cocvim.install
