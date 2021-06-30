#!/bin/bash

mkdir -p ~/.config/nvim/plugin
mkdir -p ~/.config/nvim/after/plugin
mkdir -p ~/.config/nvim/lua

for f in $(find . -regex ".*\.vim$\|.*\.lua$"); do
    rm -rf ~/.config/nvim/$f
    ln -sf $(dirname "$(readlink -f "$0")")/$f ~/.config/nvim/$f
done

mkdir -p ~/.fonts
cd ~/.fonts && \
    curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" \
        https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# https://github.com/joshdick/onedark.vim/issues/97#issuecomment-299719352
# Fix italics comments that appear highlighted when iTerm isn't set up
# correctly
if [[ $(uname) == "Darwin" ]]; then
    tic iterm-xterm-256color
fi
