## About Neovim

Checkout [Neovim's Official GitHub Repository](https://github.com/neovim/neovim/tree/master).

Neovim installation instructions are available [here](https://github.com/neovim/neovim/blob/master/INSTALL.md).

## Building from source

[Here](https://github.com/neovim/neovim/blob/master/BUILD.md#build-prerequisites) are the prerequisites to build from source.

And detailed instructions to build from source are available [here](https://github.com/neovim/neovim/blob/master/BUILD.md).

## Setup

I prefer building Neovim from source, and then installing NvChad. I followed [Dreams of Code's tutorial](https://www.youtube.com/playlist?list=PL05iK6gnYad1sb4iQyqsim_Jc_peZdNXf) to set all of this up.

This configuration is meant for [Python](https://github.com/dreamsofcode-io/neovim-python) and [C++](https://github.com/dreamsofcode-io/neovim-cpp/tree/main) development, and includes features like syntax highlighting, linting, auto-formatting, and debugging.

Following are the steps to reproduce this configuration:

```
sudo apt-get install ninja-build gettext cmake curl build-essential
git clone https://github.com/neovim/neovim
cd neovim/
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install
```

Neovim will be installed to `/usr/local/bin/nvim`. Now, NvChad must be installed.

```
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```

Once, NvChad is done installing. Open Neovim with `nvim` command and it will automatically set things up for you. You already have a powerful IDE at your disposal at this point.
 
To adopt this particular configuration, replace the pre-existing `custom` folder in `~/.config/nvim/lua/` with the `custom` folder in this repo.

Then open Neovim again with the `nvim` command and run the following:

```
:MasonInstallAll
:TSInstall python
:TSInstall cpp
```

You can run the `:Tutor` command to familiarize yourself with Vim/Neovim.

`:help` can be run to understand the functionality of whatever you're interested in.

`Space + c + h` will bring up a cheat sheet of useful Neovim keymaps.
