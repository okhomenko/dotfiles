init_bash:
	ln -nfs `pwd`/.bash* ~/

init_vim:
	ln -nfs `pwd`/.vim* ~/

init_tmux:
	ln -nfs `pwd`/.tmux ~/

init_git:
	ln -nfs `pwd`/.gitconfig ~/

init_boxname:
	ln -nfs `pwd`/.box-name ~/

init_submodules:
	git submodule update --init --recursive


init: init_bash init_vim init_tmux init_git init_boxname init_submodules

