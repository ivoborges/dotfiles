# dotfiles

My personal configuration files, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Usage

```bash
git clone git@github.com:ivoborges/dotfiles.git ~/dotfiles
cd ~/dotfiles
```
To stow a specific config:

```bash
stow nvim
stow alacritty
```
Or all:

```bash
stow .
```

To remove one:

```bash
stow -D nvim
```

