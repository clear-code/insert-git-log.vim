# insert-git-log.vim

* Insert Git's log at the cursor position.
* You can use the same options of `git log`.
  * default: `git log -10 --pretty="%s"`

## Installation

### NeoBundle

Add the following line to .vimrc.

```
NeoBundle 'clear-code/insert-git-log.vim'
```

## Usage

```
:InsertGitLog [OPTIONS]
```

### For example

* `:InsertGitLog doc/`
* `:InsertGitLog --grep doc:`
* `:InsertGitLog -1`
