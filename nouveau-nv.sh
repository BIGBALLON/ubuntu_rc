sudo -s
cd /etc/modprobe.d/
touch disable-nouveau.conf
echo "blacklist nouveau" >> disable-nouveau.conf
echo "options nouveau modeset=0" >> disable-nouveau.conf
apt-get purge nvidia-*
add-apt-repository ppa:graphics-drivers/ppa
apt-get update

update-initramfs -u
