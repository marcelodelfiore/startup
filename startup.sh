sudo apt-get update

echo 'installing curl'
sudo apt install curl -y

echo 'installing git'
sudo apt install git -y

'configuring GIT'
git config --global user.name "marcelodelfiore"
git config --global user.email "marcelodelfiore@gmail.com"
git config --global core.editor 'code --wait'
clear

echo "Generating a SSH Key"
ssh-keygen -t rsa -b 4096 -C $git_config_user_email
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | xclip -selection clipboard

echo 'enabling workspaces for both screens'
gsettings set org.gnome.mutter workspaces-only-on-primary false

echo 'installing zsh'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

echo 'installing tool to handle clipboard via CLI'
sudo apt-get install xclip -y

export alias pbcopy='xclip -selection clipboard'
export alias pbpaste='xclip -selection clipboard -o'
source ~/.zshrc

echo 'installing vim'
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim -y
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
clear


#echo 'installing code'
#curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
#sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
#sudo apt-get install apt-transport-https -y
#sudo apt-get update
#sudo apt-get install code -y # or code-insiders

#echo 'installing extensions'
#code --install-extension dbaeumer.vscode-eslint
#code --install-extension christian-kohler.path-intellisense
#code --install-extension dbaeumer.vscode-eslint
#code --install-extension dracula-theme.theme-dracula
#code --install-extension esbenp.prettier-vscode
#code --install-extension foxundermoon.shell-format
#code --install-extension yzhang.markdown-all-in-one
#code --install-extension ruby-rubocop

#echo 'installing chrome'
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

#echo 'installing nvm'
sh -c "$(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash)"
#
export NVM_DIR="$HOME/.nvm" && (
git clone https://github.com/creationix/nvm.git "$NVM_DIR"
cd "$NVM_DIR"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

source ~/.zshrc
#nvm --version
#nvm install 12
#nvm alias default 12
#node --version
#npm --version
echo 'installing nodejs'
sudo apt install nodejs

echo 'installing autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
source ~/.zshrc

echo 'installing theme'
sudo apt install fonts-firacode -y
wget -O ~/.oh-my-zsh/themes/node.zsh-theme https://raw.githubusercontent.com/skuridin/oh-my-zsh-node-theme/master/node.zsh-theme
sed -i 's/.*ZSH_THEME=.*/ZSH_THEME="ys"/g' ~/.zshrc


echo 'installing docker'
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

chmod 777 /var/run/docker.sock
docker run hello-world

echo 'installing docker-compose'
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

# ruby dependencies
sudo apt-get install -y libssl-dev zlib1g-dev -y


# git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
# mkdir -p "$(rbenv root)"/plugins
# git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
# curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
# rbenv install 3.0.0

echo 'installing ASDF'
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
# asdf plugin add python
asdf plugin add ruby
# asdf install ruby 3.0.0
cd ~
touch .tool-versions
# echo ruby 3.0.0 >> .tool-versions
# echo python 3.9.0 >> .tool-versions

echo 'instaling RAILS'
gem install bundler
gem install rails -v 6.1.3
# gem install rspec

echo 'installing qbittorrent'
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt-get update -y
sudo apt-get install qbittorrent -y

echo 'installing TOR web browser'
sudo add-apt-repository ppa:micahflee/ppa
sudo apt-get update
sudo apt install torbrowser-launcher -y
sudo apt update
sudo apt install pinta -y
sudo apt update
sudo apt install easytag -y
