echo "############";
echo "# LETS GOO #";
echo "############";


echo "## update package repo";
sudo apt-get update && apt-get upgrade;

echo "## remove old config files";
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1

echo "## install vim & tmux";
sudo apt-get install vim tmux;

echo "## link vim & tmux conf";
ln -s ./minimal/.vimrc ~;
ln -s ./minimal/.tmux.conf ~;

echo "## install vim-plug for vim";
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

source ~/.bashrc;
