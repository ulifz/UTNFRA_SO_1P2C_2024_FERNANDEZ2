#!/bin/bash
for i in 1 2 3; do
	sudo fdisk /dev/sdb <<EOF
n
p


+1G
w
EOF
done
sudo fdisk /dev/sdb <<EOF
n
e


w
EOF
for i in {1..6}; do
	sudo fdisk /dev/sdb <<EOF
n

+1G
w
EOF
done
sudo fdisk /dev/sdb <<EOF
n


w
EOF
for i in 1 2 3 5 6 7 8 9 10 11; do
        sudo mkfs -t ext4 /dev/sdb$i
done 
echo "/dev/sdb1 Examenes-UTN/alumno_1/parcial_1/ ext4 00" | sudo tee -a /etc/fstab 
echo "/dev/sdb2 Examenes-UTN/alumno_1/parcial_2/ ext4 00" | sudo tee -a /etc/fstab 
echo "/dev/sdb3 Examenes-UTN/alumno_1/parcial_3/ ext4 00" | sudo tee -a /etc/fstab 
echo "/dev/sdb5 Examenes-UTN/alumno_2/parcial_1/ ext4 00" | sudo tee -a /etc/fstab
echo "/dev/sdb6 Examenes-UTN/alumno_2/parcial_2/ ext4 00" | sudo tee -a /etc/fstab
echo "/dev/sdb7 Examenes-UTN/alumno_2/parcial_3/ ext4 00" | sudo tee -a /etc/fstab 
echo "/dev/sdb8 Examenes-UTN/alumno_3/parcial_1/ ext4 00" | sudo tee -a /etc/fstab
echo "/dev/sdb9 Examenes-UTN/alumno_3/parcial_2/ ext4 00" | sudo tee -a /etc/fstab 
echo "/dev/sdb10 Examenes-UTN/alumno_3/parcial_3/ ext4 00" | sudo tee -a /etc/fstab
echo "/dev/sdb11 Examenes-UTN/profesores/ ext4 00" | sudo tee -a /etc/fstab
