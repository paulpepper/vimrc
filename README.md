# Installation

1. Check out the project as `~/.vim` (assuming it doesn't currently exist).

1. Get the project's submodules:

        $ cd .vim
        $ git submodule init
        $ git submodule update


1. Edit `~/.vimrc` and add a line to source the file `~/.vim/vimrc`

        source ~/.vim/vimrc


1. Install ack and pep8:

        $ sudo apt-get install ack-grep pep8


1. Add the following line to vimrc to locate the ack-grep command (already done
in this repository's accompanying vimrc):

        let g:ackprg="ack-grep -H --nocolor --nogroup --column"


1. Avoid key-binding conflicts with Makegreen, change:

        "map <unique> <silent> <Leader>t :call MakeGreen()<cr>

    to

        map <unique> <silent> <Leader>g :call MakeGreen()<cr>


1. Create the directory in which Vim persistent undo data will be stored:

        $ mkdir ~/.vim-undo

The following are plugins that have previously been installed as Pathogen bundles, but through lack of use have been removed:
    command-t
    fugitive
    git
    gundo
    makegreen
    pydoc
    py.test
    rename
    snipmate
    supertab
    surround
    syntastic

