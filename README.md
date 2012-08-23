Check out the project as ~/.vim (assuming it doesn't currently exist).

Get the projects submodules:
    $ cd .vim
    $ git submodule init
    $ git submodule update

Edit ~/.vimrc and add a line to source the file ~/.vim/vimrc
    source ~/.vim/vimrc

Install ack and pep8:
    $ sudo apt-get install ack-grep pep8
