TIMESTAMP=`date "+%Y-%m-%d-%H:%M:%S"`
FILE_VIMRC=${HOME}/.vimrc
FILE_GVIMRC=${HOME}/.gvimrc
DIR_VIM=${HOME}/.vim
DIR_VIM_BAK=${HOME}/.vim.bak-${TIMESTAMP}

.PHONY: all backup install update clean clean-backup-file

all: backup install
	@echo '--Install success!--'

backup:
	@echo '--Starting backup original vim setting...--'
	rm -rf ${HOME}/.vim_bak/
	mkdir ${DIR_VIM_BAK}
	mv ${FILE_VIMRC} ${DIR_VIM_BAK}/
	mv ${FILE_GVIMRC} ${DIR_VIM_BAK}/
	mv ${DIR_VIM} ${DIR_VIM_BAK}/
	@echo '--backup setting success!--'
	@echo

install:
	@echo '--Starting install vim setting...--'
	cat _vimrc > ${FILE_VIMRC}
	cat _gvimrc > ${FILE_GVIMRC}
	cp -a _vim ${DIR_VIM} 
	git clone git://github.com/Shougo/neobundle.vim ${DIR_VIM}/bundle/neobundle.vim
	@#vim -c InitENV
	@vim +NeoBundleInstall +qall
	@echo " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile"
	@echo '--Done!--'
	@echo

# sync vimrc from git to home.
update:
	cp -a README.rst ${DIR_VIM}/
	cp -a _vimrc ${FILE_VIMRC}
	cp -a _vim/vimrc.d/* ${DIR_VIM}/vimrc.d/
	cp -a _vim/plugin-list.vim ${DIR_VIM}/
	@echo '--Done!--'
	@echo

clean:
	@echo "--Starting cleaning vim' file...--"
	rm -rf ${HOME}/.gvimrc
	rm -rf ${HOME}/.vim*
	@echo '--Done!--'
	@echo

clean-backup-file:
	@echo "--Starting cleaning vim's backup file...--"
	rm -rf ${HOME}/.vim_bak*
	@echo '--Done!--'
	@echo

