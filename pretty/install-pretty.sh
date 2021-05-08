echo "############";
echo "# LETS GOO #";
echo "############";

echo "OLD CONFIG FILES WILL BE DELETED !!!";
echo "Those are \n\t- .vimrc, \n\t- .bashrc, \n\t- .zshrc, \n\t- .tmux.conf, \n\t- .alacritty.yml, \n\t- .config/nvim/init.vim, \n\t- .config/nvim/config/";

# read command is different for zsh and bash so why even bother...
echo "Sleeping (5): ABORT IF YOU WANT TO KEEP YOUR EXISTING CONFIG FILES"
sleep 5


echo "## update package repo";
# sudo apt-get update && apt-get upgrade;

echo "## remove old config files";
sudo rm -rf $HOME/.vimrc > /dev/null 2>&1
sudo rm -rf $HOME/.bashrc > /dev/null 2>&1
sudo rm -rf $HOME/.zshrc > /dev/null 2>&1
sudo rm -rf $HOME/.tmux.conf > /dev/null 2>&1
sudo rm -rf $HOME/.alacritty.yml > /dev/null 2>&1
sudo rm -rf $HOME/.config/nvim/init.vim > /dev/null 2>&1
sudo rm -rf $HOME/.config/nvim/config > /dev/null 2>&1

echo "## install vim, tmux, curl";
# sudo apt-get install neovim tmux curl;

echo "## link vim & tmux conf";
ln -s $HOME/.dotfiles/pretty/.vimrc $HOME;
mkdir -p $HOME/.config/nvim/;
ln -s $HOME/.dotfiles/pretty/init.vim $HOME/.config/nvim/init.vim;
ln -s $HOME/.dotfiles/pretty/config $HOME/.config/nvim/config;
ln -s $HOME/.dotfiles/pretty/.tmux.conf $HOME;
ln -s $HOME/.dotfiles/pretty/.bashrc $HOME;
ln -s $HOME/.dotfiles/pretty/.zshrc $HOME;
ln -s $HOME/.dotfiles/pretty/linux/.alacritty.yml $HOME;

echo "## install vim-plug for neovim";
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       # https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "## install fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "## Install starship prompt"
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

chsh -s zsh
