.PHONY: all clean install permissions

CP		= cp --verbose --update --recursive --no-dereference
CHMOD		= chmod --verbose --preserve-root


all:

clean:

install: system-deps install-git-configs set-permissions

install-git-configs:
	$(CP) -v .gitconfig .gitignore ~

set-permissions:
	find ~/.dotfiles -type d | xargs $(CHMOD) 700
	find ~/.dotfiles -type f | xargs $(CHMOD) 600
	find ~/bin -type f | xargs $(CHMOD) 700

system-deps: system-deps-debian

system-deps-debian:
	which apt && sudo apt install bash git
