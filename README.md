Vim config
========
These are my vim configuration files.

## Install
```bash
git clone https://github.com/fedeotaran/vim-config.git && cd vim-config && bash install.sh
```

## Upgrading
```bash
cd <path_of_your_installation>/vim-config
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
* [Gruvbox](https://github.com/morhetz/gruvbox) and [Tender](https://github.com/jacoborus/tender) to color scheme.
* [Lightline](https://github.com/itchyny/lightline.vim) to statusline/tabline.
* [Ctrlp](https://github.com/ctrlpvim/ctrlp.vim) to file finding.
* [Ctrlp-funky](https://github.com/tacahiroy/ctrlp-funky) function navigator to ctrlp.
* [NERDtree](https://github.com/scrooloose/nerdtree) to explore your filesystem and to open files and directories.
* [Vim-vinegar](https://github.com/tpope/vim-vinegar) split windows and the project drawer go together
* [Ultisnips](https://github.com/sirver/ultisnips) and [Vim-snippets](https://github.com/honza/vim-snippets) for vim snippets.
* [Vim-fugitive](https://github.com/tpope/vim-fugitive) and [Vim-git](https://github.com/tpope/vim-git) for git features.
* And many others plugins...

## Thanks
This dotfiles take many ideas from work of many people, blogs, vimcasts, and others.

## License
It is free software and may be redistributed under the terms specified in the [LICENSE](https://github.com/fedeotaran/dotfiles/blob/master/LICENSE) file.
