curl https://download.sublimetext.com/Sublime%20Text%20Build%203200.dmg -o ~/Downloads/
sudo hdiutil attach ~/Downloads/Sublime%20Text%20Build%203200.dmg
cp -r  /Volumes/Sublime\ Text/Sublime\ Text.app/ /Applications/
sudo hdiutil unmount /Volumes/Sublime\ Text/

curl http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-vera-1.10.tar.bz2 -o ~/Downloads/ttf-bitstream-vera-1.10.tar.bz2
gunzip -c ~/Downloads/ttf-bitstream-vera-1.10.tar.bz2 | tar xpf


/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
brew install bash-completion
git config --global alias.co checkout
git config --global alias.st status
brew install npm





# .bash_profile
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion || {
    # if not found in /usr/local/etc, try the brew --prefix location
    [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ] && \
        . $(brew --prefix)/etc/bash_completion.d/git-completion.bash
}