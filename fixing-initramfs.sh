sudo mount --bind /dev /mnt/rpi/dev
sudo mount --bind /proc /mnt/rpi/proc
sudo mount --bind /sys /mnt/rpi/sys
sudo chroot /mnt/rpi

sudo apt update
#sudo: unable to allocate pty: No such device
cp /etc/resolv.conf /mnt/rpi/etc/resolv.conf
sudo cp /etc/resolv.conf /mnt/rpi/etc/resolv.conf
sudo mount -t devpts devpts /mnt/rpi/dev/pts
sudo chroot /mnt/rpi
sudo apt update

# tmp disk to fix 
sudo dd if=/dev/disk4 of=rpi.img status=progress
sudo dd if=rpi.img of=/dev/rdisk4 bs=4m status=progress
