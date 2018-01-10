install-jupyter:
		@./setup/install.sh jupyter/environ

uninstall-jupyter:
		@./setup/uninstall.sh jupyter/environ

install-vimrc:
		@./setup/install.sh vim/environ

uninstall-vimrc:
		@./setup/uninstall.sh vim/environ

install-ipython:
		@./setup/install.sh ipython/environ

uninstall-ipython:
		@./setup/uninstall.sh ipython/environ

install-zshrc:
		@./setup/install.sh profiles/environ

uninstall-zshrc:
		@./setup/uninstall.sh profiles/environ


install-all: install-jupyter install-vimrc install-ipython install-zshrc

uninstall-all: uninstall-jupyter uninstall-vimrc uninstall-ipython uninstall-zshrc

