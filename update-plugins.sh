#!/bin/bash -x

PLUGINDIR=~/".local/share/nvim/site/pack"

function update {
if [ -n "${2}" ]
then
    DIR="${PLUGINDIR}/${1}/start"
    mkdir -p "${DIR}"
    pushd "${DIR}"

    if [ ! -d "${1}" ]
    then
        git clone "${2}"
    else
        pushd "${1}"
        git pull
        popd
    fi

    popd
fi
}

update emmet-vim            https://github.com/mattn/emmet-vim
update fzf.vim              https://github.com/junegunn/fzf.vim
update nerdtree             https://github.com/preservim/nerdtree
update open-browser         https://github.com/tyru/open-browser.vim
update plantuml-previewer   https://github.com/weirongxu/plantuml-previewer.vim
update plantuml-syntax      https://github.com/aklt/plantuml-syntax
update supertab             https://github.com/ervandew/supertab
update vim-ale              https://github.com/dmerejkowsky/vim-ale
update vim-assembly         https://github.com/wsdjeg/vim-assembly
update vim-cmake            https://github.com/cdelledonne/vim-cmake
update vim-commentary       https://github.com/tpope/vim-commentary
update vim-fugitive         https://github.com/tpope/vim-fugitive


