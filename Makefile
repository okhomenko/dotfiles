init:
	ln -nfs `pwd`/.bash* ~/
	ln -nfs `pwd`/.zsh* ~/
	ln -nfs `pwd`/.vim* ~/
	ln -nfs `pwd`/.gitconfig ~/
	mkdir -p ~/.subversion && ln -nfs `pwd`/.svn-config ~/.subversion/config
	ln -nfs `pwd`/.tmux ~/
	git submodule update --init --recursive
	cd .vim/bundle/YouCompleteMe && ./install.sh
	cd .vim/bundle/tern_for_vim && npm install
