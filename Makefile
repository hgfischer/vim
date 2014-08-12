NEOBUNDLE := $(HOME)/.vim/bundle/neobundle.vim


default: install


$(NEOBUNDLE):
	curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh


install: $(NEOBUNDLE)
	cp vimrc $(HOME)/.vimrc


clean:
	rm -rf $(HOME)/.vim*
