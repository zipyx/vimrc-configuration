# vimrc-configuration
Intuitive Vim Configuration (vimrc)

## Requirements
- Must have Vim 8.0+
- Install preferred plugin manager [Quick Guide](https://opensource.com/article/20/2/how-install-vim-plugins)
  - My easy to install preferred plugin manager -> `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- `git clone` the repository or the file and rename as `.vimrc` in your home directory.
- Open `.vimrc` configuration file with `vim ~/.vimrc`
- Run the following commands in vim by first pushing `:` before each of the following commands like so:
  - `:source %`
  - `:PlugInstall`

# init.vim (Neo)vim config

## Arch Linux
- Run command on terminal `sudo pacman -Syu neovim`
- create a symlink between your `.vimrc` and the `init.vim` configs like so `ln -s ~/.vimrc ~/.config/nvim/init.vim`
- or create 2 separate configs for `vim` and `neovim`
- `:source %`
- `:PlugInstall`
- `:PlugUpdate`
