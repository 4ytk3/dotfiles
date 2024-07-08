#!/bin/bash

DOT_DIR="$HOME/dotfiles"

has() {
    type "$1" > /dev/null 2>&1
}

if if [ ! -d ${DOT_DIR} ]; then
    if has "git"; then
        git clone https://github.com/4ytk3/dotfiles.git ${DOT_DIR}
    else
        echo "git required"
        exit 1
    fi
    cd ${DOT_DIR}
    for f in *
    do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".gitignore" ]] && continue
        [[ "$f" == ".DS_Store" ]] && continue
        [[ "$f" == "README.md" ]] && continue
        [[ "$f" == "install.sh" ]] && continue

        ln -snf $DOT_DIR/"$f" $HOME/".$f"
        echo "Installed .$f"
    done
else
    echo "dotfiles already exists"
    exit 1
fi
