dotfiles
========
This is my files configurations.

Install
=======
```zsh
git clone https://github.com/fedeotaran/dotfiles.git && cd dotfiles && bash install.sh
```

Upgrading
=========
```zsh
cd <path_of_your_installation>/dotfiles
git pull
```

Make your own configurations
============================
Put your own customizations in dotfiles appended with .local:
* `.vimrc.local`
* `.vimrc.bundles.local`

What's included?
================
## Vim plugins

* [Vundle](https://github.com/gmarik/Vundle.vim) to manage plugins.
* [Gruvbox](https://github.com/morhetz/gruvbox) to color scheme.
* [lightline](https://github.com/itchyny/lightline.vim) to statusline/tabline.
* [Ctrlp](https://github.com/kien/ctrlp.vim) to file finding.
* [NERDtree](https://github.com/scrooloose/nerdtree) to explore your filesystem and to open files and directories.
* [Ultisnips](https://github.com/sirver/ultisnips) and [Vim-snippets](https://github.com/honza/vim-snippets) for vim snippets.
* Many others plugins.

License
=======
It is free software and may be redistributed under the terms specified in the [LICENSE](https://github.com/fedeotaran/dotfiles/blob/master/LICENSE) file.
