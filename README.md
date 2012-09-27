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

Avoid key-binding conflicts with Makegreen, change:
```
"map <unique> <silent> <Leader>t :call MakeGreen()<cr>
```
to
```
map <unique> <silent> <Leader>g :call MakeGreen()<cr>
```

