# .dotfiles

This repo contains various config files. It follows the methodology describe by StreakyCobra over on [Hacker News](https://news.ycombinator.com/item?id=11070797).

## Initial setup

1. Initialize a bare git repo with name `.dotfiles`
```bash
git init --bare $HOME/.dotfiles
```

2. Add command alias to `.aliases`
```bash
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.aliases && . ~/.zshrc
```

3. Make git only show tracked files (untracked files can still be viewed with `git status -u`)
```bash
dotfiles config --local status.showUntrackedFiles no
```

4. Adding this repository as upstream
```bash
dotfiles remote add origin https://github.com/PossessedC0bra/.dotfiles.git
```

5. Creating main branch
```bash
git checkout main
```

## Usage

Because the `dotfiles` command is simply an alias to the `git` command with default values we can simplt use it in place of the `git` command.

### Examples
```bash
dotfiles status
dotfiles add .zshrc
dotfiles commit -m "feat: add .zshrc"
dotfiles push
```

## Setup on a new computer

1. Cloning this repository
```bash
git clone --bare https://github.com/PossessedC0bra/.dotfiles.git $HOME/.dotfiles
```

2. Defining `dotfiles` alias in current shell for convenience
```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

3. Checking out this repository
```bash
dotfiles checkout
```
