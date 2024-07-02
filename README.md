# Mydots

![mydots-screenshot](docs/img/mydots.png)

1. [Installation](#installation)
2. Window Manager: [dwm](#dwm)
    - Terminal: [st](https://st.suckless.org/)
    - Status Bar: [dwmblocks-async](#dwmblocks-async)
    - Fonts: [Font](#font)
3. Editors:
    - [Neovim as IDE](#neovim_as_ide)
    - [Vim for notetaking](#vim_for_notetaking)
4. Shell: [zsh](#zsh)
5. Notifications: [dunst](https://dunst-project.org/) 
6. [TODO](#TODO)
---




## 1. Installation<a name="installation"></a> 

Those are my dot files so far.. this is a work in progress hence it may break.
Bootstraping is greatly simplified using
[dotbot](https://github.com/anishathalye/dotbot) for user dependencies and stow
for system-wide dependencies.

### Known Requirements

 - `git` 
 - GNU `stow`
 - [XDG Base Directory](https://wiki.archlinux.org/title/XDG_Base_Directory)


### Download

`cd` into a directory of your choice


```
git clone https://github.com/gsavarela/mydots.git && cd mydots
```

### Compile Suckless Tools
```
cd dwm && sudo make clean install && cd .. \
cd dwmblocks && sudo make clean install && cd .. \
cd st && sudo make clean install && cd
```


### Run install script

Installation is performed by a python based application dotbot. To launch
configuration `install.conf.yaml`  run:


```
./install
```
Stow is used to symlink zshenv to /etc/


## 2. Windom Manager: Dwm

## Dwmblocks-async<a name="dwmblocks-async"></a> 

A modular statusbar for `dwm` written in C. You may think of it as `i3blocks`, but for `dwm`.
Credits to [UtkarshVerma](https://github.com/UtkarshVerma/dwmblocks-async) 


### Features
- Modular
- Lightweight
- Suckless
- Blocks are clickable
- Blocks are loaded asynchronously
- Each block can be externally triggered to update itself
- Compatible with `i3blocks` scripts

---
## Installed fonts<a name="fonts"></a> 
Two good sources: [Suckless Terminal and Fonts](https://github.com/LukeSmithxyz/voidrice/issues/284) and [MachOS](https://github.com/Mach-OS/Machfiles) 

```
    ttf-bitstream-vera 1.10-14
    ttf-font-awesome 6.1.1-1
    ttf-linux-libertine 5.3.0-8
    ttf-nerd-fonts-symbols 2.1.0+36+gd0bf73a1-4
    ttf-symbola 13.00-8
```
---

## 3. Editors

### Neovim with NVChad as  a Python IDE <a name="neovim_as_ide"></a> 

Uses NVChad 2.5: Blazing fast Neovim config providing solid defaults and a beautiful UI. Requires: 

- Neovim 0.10
- JetbrainsMono Nerd Font or another patched Nerd Font.
- Ripgrep for searching with Telescope
- GCC (linux).

### Vim for Notetaking <a name="vim_for_notetaking"></a> 

The current installation of vim is as minimal as possible, as opposed to the neovim installation, and is taylored towards writting notes using the well known [Zettelkasten Method](https://zettelkasten.de/introduction/).
Vim also serves as the utility for as mergetool, just can't live without fugitive, and official CLI editor.

### Vim as Zettelkasten.

Uses [vim-zettel](https://github.com/michal-h21/vim-zettel) built on top of the
well known [vimwiki](https://github.com/vimwiki/vimwiki) plugin.

#### 1. Create new note.

You can create a new note with the selected text as the note title by typing
`z` 

#### 2. Linking an existent note

Type `[[` for linking to an existent note.  This runs the silver searcher in a
new window split and dynamically shows search results as you type. Hitting
enter on one of its search result lines inserts a link to that file in your
note.


#### 3. Backlinking

Type `T` (in normal mode) to create backlinks.  Copy note title and place it on
the buffer for backlinking. If you want to insert a link to the current note in
another note you can type `T` in normal mode to copy a formatted wiki link with
the current note title as the link text that you can paste in other notes.

#### More...

Type `:Zettel` and press tab for command completion.

### Vim as Mergetool.

  TODO: Fugitive plugin basics.

### 4. Shell: zsh<a name="zsh"></a> 

The reference is the [Matchfiles](https://github.com/Mach-OS/Machfiles) repo.

- Muh plugin manager -- it's just a shell function.
- Vim mode.
- Synthax high-lighting.
- Code completion.
- Sane `zsh/` directory vs. monolithic `.bashrc`.


# TODO

- [x] Switch to [xrdb patch](https://dwm.suckless.org/patches/xrdb/) for theme switching
- [] Create a list of keybindings
- [ ] Explain installation procedure and how everything works
	- [ ] Mention the mandatory and optional dependencies
	- [x] Make a basic guide
	- [ ] Make a detailed guide
	- [ ] Make guides for fedora and debian
- [] Scripts for detecting mountable and unmountable paths
- [] Create a backup routine.
