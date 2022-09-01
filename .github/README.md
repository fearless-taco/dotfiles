# Requirements
Install [brew](https://brew.sh) 
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Install neovim
```zsh
brew install [neovim](https://github.com/neovim/neovim)
```
Install [vim-plug](https://github.com/junegunn/vim-plug) (for nvim)
```zsh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Installation
[Adapted from Bitbucket](https://www.atlassian.com/git/tutorials/dotfiles)

Clone dotfiles into a bare repository in a "dot" folder of your $HOME:
```zsh
git clone --bare https://github.com/jsonkuan/dotfiles $HOME/.dotfiles

```

Define the alias in the current shell scope:
```zsh
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

```

Checkout the actual content from the bare repository to your $HOME:
```zsh
dotfiles checkout
```

Set the flag showUntrackedFiles to no on this specific (local) repository:
```zsh
dotfiles config --local status.showUntrackedFiles no
```
