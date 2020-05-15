# Installation

1. Check out the project as `~/.vim` (assuming it doesn't currently exist).

## Automatic Setup

Change into the newly created `.vim` directory and source the setup.sh script.

    $ cd ~/.vim
    $ source setup.sh

You're done.


## Manual Setup

1. Get the project's submodules:

        $ cd .vim
        $ git submodule init
        $ git submodule update


1. Edit `~/.vimrc` and add a line to source the file `~/.vim/vimrc`

        :source ~/.vim/vimrc

1. Install pep8 and flake8:

        $ sudo apt-get install pep8 flake8

1. Create the directory in which Vim persistent undo data will be stored - persistence fails otherwise:

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

When the above modules were being used it was necessary to perform the following additional actions:

1. Install ack:

        $ sudo apt-get install ack-grep


1. Add the following line to vimrc to locate the ack-grep command (already done in this repository's accompanying vimrc):

        let g:ackprg="ack-grep -H --nocolor --nogroup --column"


1. Avoid key-binding conflicts with Makegreen, change:

        "map <unique> <silent> <Leader>t :call MakeGreen()<cr>

    to

        map <unique> <silent> <Leader>g :call MakeGreen()<cr>


# Add New Vim Plugin

Vim plugins are loaded by Pathogen and are installed and managed as git
submodules. Add a new plugin by cloning the vim plugin into the bundle
directory as follows:

    $ git submodule add https://github.com/nvie/vim-flake8.git bundle/vim-flake8

Then commit the submodule changes (in this case .gitmodules will have been
updated and the new package added):

    $ git add -m "Added vim-flake8 plugin."

