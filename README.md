# Installation
[Taken from Bitbucket](https://www.atlassian.com/git/tutorials/dotfiles)


Prior to the installation make sure you have committed the alias to your .zshrc:
```zsh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

```

And that your source repository ignores the folder where you'll clone it, so that you don't create weird recursion problems:
```zsh
echo ".cfg" >> .gitignore
```

Now clone your dotfiles into a bare repository in a "dot" folder of your $HOME:
```zsh
git clone --bare https://github.com/jsonkuan/dotfiles $HOME/.cfg

```

Define the alias in the current shell scope:
```zsh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

```

Checkout the actual content from the bare repository to your $HOME:
```zsh
config checkout
```

Set the flag showUntrackedFiles to no on this specific (local) repository:
```zsh
config config --local status.showUntrackedFiles no
```
