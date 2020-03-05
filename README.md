# dotfiles

## Install git and stow

```bash
sudo apt install git stow -y
```

## Setup

```bash
git clone https://github.com/rhoriguchi/dotfiles.git ~/.dotfiles

sudo chmod +x ~/.dotfiles/init.sh
~/.dotfiles/init.sh
```

## Create .git-credentials

Replace `USERNAME` with git username and `PASSWORD` with git password

```bash
echo 'https://USERNAME:PASSWORD@github.com' > ~/.git-credentials
```
