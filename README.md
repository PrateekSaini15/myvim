# Resources
- [Learn vim the smart way](https://github.com/iggredible/Learn-Vim)
- [Learn vim the hard way](https://learnvimscriptthehardway.stevelosh.com/)
- [Vim Genius](http://vimgenius.com/)
- [Vim cheat sheet](https://vim.rtorr.com/)
- [Vim Plug](https://github.com/junegunn/vim-plug)

# Setting up Fuzzy Finder
```
if (Get-Command rg -ErrorAction SilentlyContinue) {
        $env:FZF_DEFAULT_COMMAND = 'rg --files'
        $env:FZF_DEFAULT_OPTS = '-m'
}
```
