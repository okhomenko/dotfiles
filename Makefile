init_bash:
	ln -nfs `pwd`/.bash* ~/

init_zsh:
	ln -nfs `pwd`/.zsh* ~/

init_vim:
	ln -nfs `pwd`/.vim* ~/

init_tmux:
	ln -nfs `pwd`/.tmux ~/

init_svn:
	mkdir -p ~/.subversion && ln -nfs `pwd`/.svn-config ~/.subversion/config

init_git:
	ln -nfs `pwd`/.gitconfig ~/

init_boxname:
	ln -nfs `pwd`/.box-name ~/

init_ssh:
	ln -nfs `pwd`/ssh_config ~/.ssh/config

init_submodules:
	git submodule update --init --recursive
	cd .vim/bundle/YouCompleteMe && ./install.sh
	cd .vim/bundle/tern_for_vim && npm install

init_fonts:
	cp "Monaco for Powerline.otf" ~/Library/Fonts
	echo "\n!!!Set Monaco for Powerline.otf in your terminal\n"

init: init_bash init_zsh init_vim init_tmux init_svn init_git init_boxname init_ssh init_submodules init_fonts

