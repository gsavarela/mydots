# Mydots

1. [Installation](#installation)
2. [Neovim as IDE](#neovim_as_ide)
3. [Vim for notetaking](#vim_for_notetaking)
4. [TODO](#TODO)

## Installation<a name="installation"></a> 

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

# Everything (-I flag to ignore source)

stow -R $(ls -Idocs -Isources -Ipatches -IREADME.md) -t ~

# Just my dwm config
stow dwm 

```
## Neovim as IDE <a name="neovim_as_ide"></a> 


## Vim for Notetaking <a name="vim_for_notetaking"></a> 

The current installation of vim is as minimal as possible, as opposed to the neovim installation, and is taylored towards writting notes using the well known [Zettelkasten Method](https://zettelkasten.de/introduction/).
Vim also serves as the utility for as mergetool, just can't live without fugitive, and official CLI editor.

### Vim as Zettelkasten.

The current setup mostly uses the excelent scripts by [joakin/vim](https://github.com/joakin/.vim) and his [tutorial](https://www.youtube.com/watch?v=u8jvUaqadsg).

#### 1. NewNote
Start writing using the command `:NewNote` and passing a header:
<br />
![new_note](docs/vim/01_vim_for_notetaking-new_note.gif)
<br />
#### 2. The next (related) note.
From within the note it's often convinent to add a new note:
<br />
![related_note](docs/vim/02_vim_for_notetaking-new_note-related.gif)
<br />

#### 3. Linking both notes.
We can now link both notes using `:NoteLink`
<br />
![note_linking](docs/vim/03_vim_for_notetaking-linking.gif)
<br />

#### 4. Note Navigation
Use the `go to file` shortcut `gf` and `Ctrl+o` to go back.
<br />
![navigation](docs/vim/04_vim_for_notetaking-navigation.gif)
<br />

#### 5. Searching for backlinks.
Use the command `:NoteReferences` and select the link.
<br />
![backlinks](docs/vim/05_vim_for_notetaking-backlinks.gif)
<br />

See also his tutorials.

### Vim for reference notes.

One aspect of the Zettelkasten method is to make reference notes that outline the contents of an article. The vim-pandoc plugin provides for easy citation within a
markdown file. Just drop the bib file containing the bibliography information and a reference markdown file containing the header: 
```
---
title: Reading notes
author: Author Name
bibliography: /path/to/references.bib
abstract: Reading notes with references
---
```

Now by typing `[@` and typing `Ctrl+X+O` we can omini-complete our bibliography files. 
<br />
![citations](docs/vim/06_vim_for_citations.gif)
<br />

### Vim as Mergetool.

## TODO <a name="TODO"></a> 

- Add installer script
- Add packages descriptions.
