Check out the project as `~/.vim` (assuming it doesn't currently exist).

Get the project's submodules:
```
$ cd .vim
$ git submodule init
$ git submodule update
```

Edit `~/.vimrc` and add a line to source the file `~/.vim/vimrc`
```
source ~/.vim/vimrc
```

Install ack and pep8:
```
$ sudo apt-get install ack-grep pep8
```
Add the following line to vimrc to locate the ack-grep command (already done
in this repository's accompanying vimrc):
```
let g:ackprg="ack-grep -H --nocolor --nogroup --column"
```

Avoid key-binding conflicts with Makegreen, change:
```
"map <unique> <silent> <Leader>t :call MakeGreen()<cr>
```
to
```
map <unique> <silent> <Leader>g :call MakeGreen()<cr>
```

Create the directory in which Vim persistent undo data will be stored:

    $ mkdir ~/.vim-undo

