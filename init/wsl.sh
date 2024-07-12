sudo apt install curl -y
sudo apt install git -y
sudo apt install zsh -y
sudo apt install xsel -y
sudo apt install wget -y
sudo apt install zip unzip -y
sudo apt install tmux -y
sudo apt install vim -y
sudo apt install fzf -y

# font install
mkdir -p ~/.local/share/fonts
sudo wget https://github.com/yuru7/HackGen/releases/download/v2.9.0/HackGen_NF_v2.9.0.zip
unzip HackGen_NF_v2.9.0.zip
mv HackGen_NF_v2.9.0 HackGen_NF
mv HackGen_NF ~/.local/share/fonts
fc-cache -vf
rm -rf HackGen_NF_v2.9.0.zip
