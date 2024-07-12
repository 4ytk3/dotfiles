mkdir -p ~/.local/share/fonts
sudo wget https://github.com/yuru7/HackGen/releases/download/v2.9.0/HackGen_NF_v2.9.0.zip
unzip HackGen_NF_v2.9.0.zip
mv HackGen_NF_v2.9.0 HackGen_NF
mv HackGen_NF ~/.local/share/fonts
fc-cache -vf
rm -rf HackGen_NF_v2.9.0.zip
