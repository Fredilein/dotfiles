echo "############";
echo "# LETS GOO #";
echo "############";


echo "## update package repo";
# sudo apt-get update && apt-get upgrade;

echo "## remove old config files";
sudo rm -rf $HOME/.vimrc > /dev/null 2>&1
sudo rm -rf $HOME/.bashrc > /dev/null 2>&1
sudo rm -rf $HOME/.tmux.conf > /dev/null 2>&1
sudo rm -rf $HOME/.alacritty.yml > /dev/null 2>&1
sudo rm -rf $HOME/.config/nvim/init.vim > /dev/null 2>&1

echo "## install vim, tmux, curl";
# sudo apt-get install neovim tmux curl;

echo "## link vim & tmux conf";
ln -s $HOME/.dotfiles/pretty/.vimrc $HOME;
mkdir -p $HOME/.config/nvim/;
ln -s $HOME/.dotfiles/pretty/init.vim $HOME/.config/nvim/init.vim;
ln -s $HOME/.dotfiles/pretty/config/ $HOME/.config/nvim/config/;
ln -s $HOME/.dotfiles/pretty/.tmux.conf $HOME;
ln -s $HOME/.dotfiles/pretty/.bashrc $HOME;
ln -s $HOME/.dotfiles/pretty/.alacritty.yml $HOME;

echo "## install vim-plug for neovim";
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
