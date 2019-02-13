# Vim
My vim configuration

How to setup my settings to your vim:
```bash
rm -r ~/.vim # remove your .vim folder in home directory
rm ~/.vimrc # remove your .vimrc
git clone https://github.com/oybek/vim.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s ~/.vim/.vimrc ~/.vimrc
gvim -c "PluginInstall"
```

One command
```bash
rm -r ~/.vim; rm ~/.vimrc; git clone https://github.com/oybek/vim.git ~/.vim && git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && ln -s ~/.vim/.vimrc ~/.vimrc && gvim -c "PluginInstall"
```


# Screnshots
![alt text](http://i.imgur.com/SabzkO2.png)
