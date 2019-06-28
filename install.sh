echo "############";
echo "# LETS GOO #";
echo "############";

echo "## update package repo";
sudo apt-get update && apt-get upgrade;

echo "## Install neovim & tmux";
sudo apt-get install neovim tmux;

echo "## Link neovim & tmux conf";
ln -s ./minimal/.vimrc ~;
ln -s ./minimal/.tmux.conf ~;

echo "## Install vim-plug for neovim";
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
