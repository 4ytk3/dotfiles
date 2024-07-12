#!/bin/bash
DOT_DIR="$HOME/.dotfiles"

has() {
    type "$1" > /dev/null 2>&1
}

if [ ! -d ${DOT_DIR} ]; then
    if has "git"; then
        git clone https://github.com/4ytk3/dotfiles.git ${DOT_DIR}
    elif has "curl" || has "wget"; then
	TARBALL="https://github.com/4ytk3/dotfiles/archive/main.tar.gz"
	if has "curl"; then
	    curl -L ${TARBALL} -o main.tar.gz
	else
	    wget ${TARBALL}
	fi
	tar -zxvf main.tar.gz
	rm -f main.tar.gz
	mv -f dotfiles-main "${DOT_DIR}"
    else
        echo "git required"
        exit 1
    fi

    cd ${DOT_DIR}
    for f in *;
    do
        [[ "$f" == ".git" ]] && continue
        [[ "$f" == ".gitignore" ]] && continue
        [[ "$f" == ".DS_Store" ]] && continue
        [[ "$f" == "README.md" ]] && continue
        [[ "$f" == "install.sh" ]] && continue
        [[ "$f" == "init"]] && continue

        ln -snf $DOT_DIR/"$f" $HOME/".$f"
        echo "Installed .$f"
    done
else
    echo "dotfiles already exists"
    exit 1
fi

# for Mac, WSL, Linux
if [ "$(uname)" == 'Darwin' ]; then
  # for Mac
  $DOT_DIR/init/mac.sh
elif [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  # for WSL
  $DOT_DIR/init/wsl.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  # for linux
  :
else
  exit 1
fi

# set zsh
chsh -s $(which zsh)

# oh-my-zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install zsh plugins
$DOT_DIR/init/zsh_plugins.sh

# install font
$DOT_DIR/init/font.sh

# apply abbr
$DOT_DIR/init/.abbreviations
