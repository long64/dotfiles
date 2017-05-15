# dotfiles

git clone https://github.com/lon64/dotfiles.git
cd dotfiles
./setup.sh

export ZPLUG_HOME=~/.zplug
git clone https://github.com/zplug/zplug $ZPLUG_HOME

wget https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_amd64.tar.gz
tar xzvf peco_linux_amd64.tar.gz
cd peco_linux_amd64
cp peco /usr/bin/

pip install --user powerline-status
sudo apt install powerline
