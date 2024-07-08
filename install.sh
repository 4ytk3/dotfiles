DOT_DIR="$home"
# clone
git clone https://github.com/4ytk3/dotfiles.git ${DOT_DIR}
# link
#!/bin/bash
DOT_DIR="$HOME/dotfiles"
for f in *;
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == "README.md" ]] && continue
    [[ "$f" == "install.sh" ]] && continue

    ln -snf $DOT_DIR/"$f" $HOME/".$f"
    echo "Installed .$f"
done

# Macなら普通のbrew、WSLならLinux-brewを入れる処理をする箇所
if [ "$(uname)" == 'Darwin' ]; then
  echo 'Install brew [Mac]'
  /usr/local/bin/ -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo 'Install modules only for Mac'
  ~/dotfiles/init/setup/mac.sh
	$ sudo vi /etc/shells

elif [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
	# ~/dotfiles/init/setup/wsl.sh
  sudo apt-get update
  sudo apt-get install zsh
  chsh -s /bin/zsh

elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  echo 'Install brew [Linux]'
else
  exit 1
fi

source ~/.zshrc
