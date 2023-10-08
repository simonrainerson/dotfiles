# My dotfiles

```
git clone --bare git@github.com:simonrainerson/dotfiles.git ~/.dotfiles
echo "alias dotfiles='$(which git) --git-dir="'$HOME'"/.dotfiles/ --work-tree="'$HOME'"'" >>~/.bashrc
echo "source /usr/share/bash-completion/completions/git" >>~/.bashrc
echo "__git_complete dotfiles __git_main" >>~/.bashrc
source ~/.bashrc
dotfiles config status.showUntrackedFiles no
```
