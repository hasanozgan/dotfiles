# Keep it simple for now...
all:
	[ -f ~/.vimrc ] || ln -s $(PWD)/init.vim ~/.vimrc
	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/init.vim ~/.config/nvim/init.vim
	[ -f ~/.ctags ] || ln -s $(PWD)/ctags ~/.ctags
	[ -f ~/.gitconfig ] || ln -s $(PWD)/gitconfig ~/.gitconfig
	[ -f ~/.bashrc ] || ln -s $(PWD)/bashrc ~/.bashrc
	[ -f ~/.git-prompt.sh ] || ln -s $(PWD)/git-prompt.sh ~/.git-prompt.sh
	[ -f ~/.config/omf ] || ln -s $(PWD)/omf ~/.config/omf
	[ -f ~/atom-config.cson ] || ln -s $(PWD)/omf ~/.atom/config.cson

install-omf:
	[ -f ~/.oh-my-fish ] || curl -L https://github.com/oh-my-fish/oh-my-fish/raw/master/bin/install | fish

clean:
	[ -f ~/.vimrc ] || rm ~/.vimrc 
	[ -f ~/.ctags ] || rm ~/.ctags 
	[ -f ~/.gitconfig ] || rm ~/.gitconfig
	[ -f ~/.bashrc ] || rm ~/.bashrc
	[ -f ~/.git-prompt.sh ] || rm ~/.git-prompt.sh
	[ -f ~/.config/omf ] || rm -rf ~/.config/omf
	[ -f ~/.atom/config.cson ] || rm ~/.atom/config.cson
	[ -f ~/.oh-my-fish ] || /usr/local/bin/fish -c "omf destroy"
.PHONY: all
