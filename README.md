# dotfiles

git clone https://github.com/long64/dotfiles.git
cd dotfiles
./setup.sh

export ZPLUG_HOME=~/.zplug
git clone https://github.com/zplug/zplug $ZPLUG_HOME

git clone https://github.com/mollifier/anyframe.git

wget https://github.com/peco/peco/releases/download/v0.5.1/peco_linux_amd64.tar.gz
tar xzvf peco_linux_amd64.tar.gz
cd peco_linux_amd64
cp peco /usr/bin/

pip install --user powerline-status
sudo apt install powerline

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
