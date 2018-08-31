
# Brent's Dotfiles

## Install dependencies

```
brew install stow
brew install go
brew install vim
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
```

# Updating

```
cd dotfiles
git pull
stow zsh
stow tmux
stow vim
vim +'PlugInstall --sync' +qa
```
