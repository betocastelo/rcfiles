dotfiles = .emacs .zshrc

all: $(dotfiles)
	cp $(dotfiles) ~

$(dotfiles): .%: %.in
	cp $< $@
