# Neovim Config for Arch Linux running on WSL2

## Environment

+ Arch Linux
+ Python with pip
+ Node.js with npm
+ gcc/g++
+ gdb
+ TeX Live

## Font

+ Fira Code Nerd Font
+ DejaVu Sans Nerd Font

## Config

Install Neovim:

```bash
sudo pacman -S neovim
```

Install Python:

```bash
sudo pacman -S python python-pip
pip install neovim
```

Install Node.js:

```bash
sudo pacman -S nodejs npm
npm install neovim
```

Install gcc/g++/gdb:

```bash
sudo pacman -S gcc gdb
```

Install TeX Live:

```bash
sudo pacman -S texlive-most texlive-lang texlive-langextra texlive-bibtexextra texlive-fontsextra biber
```
Install fd/fzf:

```bash
sudo pacman -S fzf fd
```
