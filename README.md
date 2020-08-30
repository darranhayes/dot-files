# My common dot files and shell scripts used for bash, vim, and git

Copy or symlink the repo files to ~

```
ln -s ~/src/DotFiles/.bashrc ~/.bashrc
ln -s ~/src/DotFiles/.gitconfig ~/.gitconfig
ln -s ~/src/DotFiles/.inputrc ~/.inputrc
ln -s ~/src/DotFiles/.vimrc ~/.vimrc
ln -s ~/src/DotFiles/git-prompt.sh ~/git-prompt.sh

cp ~/src/DotFiles/.bashrc ~/.bashrc
cp ~/src/DotFiles/.gitconfig ~/.gitconfig
cp ~/src/DotFiles/.inputrc ~/.inputrc
cp ~/src/DotFiles/.vimrc ~/.vimrc
cp ~/src/DotFiles/git-prompt.sh ~/git-prompt.sh
```

On windows, git bash requires admin rights and correct configuration for setting symlinks correctly. My ConEmu task is configured as

```
set "PATH=%ConEmuDir%\..\Git\usr\bin;%PATH%" & set "MSYS=winsymlinks:nativestrict" & %ConEmuDir%\..\Git\git-cmd.exe --no-cd --command=%ConEmuBaseDirShort%\conemu-msys2-64.exe /usr/bin/bash.exe -l -i -new_console:a
```
