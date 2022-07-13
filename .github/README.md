# Installation
[Adapted from Bitbucket](https://www.atlassian.com/git/tutorials/dotfiles)

Clone dotfiles into a bare repository in a "dot" folder of your $HOME:
```zsh
git clone --bare https://github.com/jsonkuan/dotfiles $HOME/.cfg

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
