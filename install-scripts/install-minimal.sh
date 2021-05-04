echo "############";
echo "# LETS GOO #";
echo "############";


echo "## update package repo";
sudo apt-get update && apt-get upgrade;

echo "## remove old config files";
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.config/nvim/init.vim > /dev/null 2>&1

echo "## install vim, tmux, curl";
sudo apt-get install vim neovim tmux curl;

echo "## link vim & tmux conf";
ln -s ~/.dotfiles/minimal/.vimrc ~;
mkdir -p ~/.config/nvim/;
ln -s ~/.dotfiles/minimal/.vimrc ~/.config/nvim/init.vim;
ln -s ~/.dotfiles/minimal/.tmux.conf ~;
ln -s ~/.dotfiles/minimal/.bashrc ~;

echo "## install vim-plug for neovim";
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

source ~/.bashrc;
