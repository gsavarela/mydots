# Mydots


## Instalation
Those are my dot files so far.. this is a work in progress hence it may break.

### Requirements

You will need `git`, GNU `stow` and [XDG Base Directory](https://wiki.archlinux.org/title/XDG_Base_Directory)


### Download

`cd` into a directory of your choice


```
git clone https://github.com/gsavarela/mydots.git && cd mydots

```

### Compile Suckless Tools

```
cd sources && cd dwm && sudo make clean install
cd .. && cd dwmblocks && sudo make clean install
cd .. && cd st && sudo make clean install
cd ../..

```

### Stow 

Run stow to symlink everything or just select what you want

```
stow $(ls -Isources -Ipathces )/ # Everything (the '/' ignores the README)

stow dwm # Just my dwm config

```

## TODO

- Add installer script
- Add packages
