Dotfiles
========
These are my configuration files.

## Install
```bash
git clone https://github.com/fedeotaran/dotfiles.git && cd dotfiles && bash install.sh
```

## Upgrading
```bash
cd <path_of_your_installation>/dotfiles
git pull
```
Make sure to run `install.sh` after to install new plugins.

## Make your own configurations
Put your own customizations in dotfiles appended with .local:
* `.vimrc.local`
* `.vimrc.bundles.local`

## What's included?
### Vim plugins

* [Vundle](https://github.com/gmarik/Vundle.vim) to manage plugins.
* [Gruvbox](https://github.com/morhetz/gruvbox) to color scheme.
* [lightline](https://github.com/itchyny/lightline.vim) to statusline/tabline.
* [Ctrlp](https://github.com/ctrlpvim/ctrlp.vim) to file finding.
* [NERDtree](https://github.com/scrooloose/nerdtree) to explore your filesystem and to open files and directories.
* [Ultisnips](https://github.com/sirver/ultisnips) and [Vim-snippets](https://github.com/honza/vim-snippets) for vim snippets.
* And many others plugins...

## Thanks
This dotfiles take many ideas from work of many people, blogs, vimcasts, and others.

## License
It is free software and may be redistributed under the terms specified in the [LICENSE](https://github.com/fedeotaran/dotfiles/blob/master/LICENSE) file.
