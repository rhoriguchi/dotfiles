# dotfiles

## Install dependencies
```bash
sudo apt-get install git stow
```

## Setup
```bash
git clone https://github.com/rhoriguchi/dotfiles.git ~/.dotfiles
```

## Activate
```bash
sudo chmod +x ~/.dotfiles/init.sh
~/.dotfiles/init.sh
```

## Create .git-credentials

Create git credential file and write singel line and replace `PASSWORD` with git password
```bash
nano ~/.git-credentials
```

=> `https://rhoriguchi:PASSWORD@github.com`
