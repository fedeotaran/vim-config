Vim config
========
These are my vim configuration files.

## Install
```bash
git clone https://github.com/fedeotaran/vim-config.git .vim-config
  && cd .vim-config
  && bash install.sh
```

## Upgrading
```bash
cd <path_of_your_installation>
git pull
```
Make sure to run `install.sh` after to install new plugins.

## Make your own configurations
Put your own customizations in dotfiles appended with .local:
* `.vimrc.local` to set you own vim configurations.
* `.vimrc.bundles.local` to add more vim plugins.

## What's included?
### Vim plugins
* [Vim-plug](https://github.com/junegunn/vim-plug) to manage plugins.
* [Gruvbox](https://github.com/morhetz/gruvbox) and [Tender](https://github.com/jacoborus/tender) to color scheme.
* [Lightline](https://github.com/itchyny/lightline.vim) to statusline/tabline.
* [FZF](https://github.com/junegunn/fzf) to file finding.
* [Vim-vinegar](https://github.com/tpope/vim-vinegar) split windows and the project drawer go together.
* [Ultisnips](https://github.com/sirver/ultisnips) and [Vim-snippets](https://github.com/honza/vim-snippets) for vim snippets.
* [Vim-fugitive](https://github.com/tpope/vim-fugitive) and [Vim-git](https://github.com/tpope/vim-git) for git features.
* And many others plugins...

## Thanks
This dotfiles take many ideas from work of many people, blogs, vimcasts, and others.

## License
It is free software and may be redistributed under the terms specified in the [LICENSE](https://github.com/fedeotaran/dotfiles/blob/master/LICENSE) file.
