set -x
mv ~/.bashrc ~/.bashrc.bak
cp .bashrc ~/.bashrc && source ~/.bashrc
bash basic_install.sh
bash pytorch_install.sh
