sudo mount --bind /dev /mnt/rpi/dev
sudo mount --bind /proc /mnt/rpi/proc
sudo mount --bind /sys /mnt/rpi/sys
sudo chroot /mnt/rpi

sudo apt update
# sudo: unable to resolve host alex-QEMU-Virtual-Machine: Temporary failure in name resolution
#sudo: unable to allocate pty: No such device
exit

cp /etc/resolv.conf /mnt/rpi/etc/resolv.conf
cp: cannot create regular file '/mnt/rpi/etc/resolv.conf': Permission denied
sudo cp /etc/resolv.conf /mnt/rpi/etc/resolv.conf
sudo mount -t devpts devpts /mnt/rpi/dev/pts
sudo chroot /mnt/rpi
sudo apt update
