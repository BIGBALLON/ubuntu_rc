cd /etc/modprobe.d/
touch disable-nouveau.conf
echo "blacklist nouveau" >> disable-nouveau.conf
echo "options nouveau modeset=0" >> disable-nouveau.conf
sudo apt-get purge nvidia-*
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update

sudo update-initramfs -u
sudo reboot


