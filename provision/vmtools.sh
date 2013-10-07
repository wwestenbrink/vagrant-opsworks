if [ -f /home/vagrant/.vbox_version ]; then
    echo "Installing VirtualBox guest additions"

    apt-get install -y linux-headers-$(uname -r) build-essential perl dkms

    mount -o loop /home/vagrant/VBoxGuestAdditions.iso /mnt
    sh /mnt/VBoxLinuxAdditions.run
    umount /mnt
    rm /home/vagrant/VBoxGuestAdditions.iso
fi

if [ -f /home/vagrant/vmware_tools.iso ]; then
    echo "Installing VMWare Tools"

    #Set Linux-specific paths and ISO filename
    home_dir="/home/vagrant"
    iso_name="vmware_tools.iso"
    mount_point="/tmp/vmware-tools"

    #Run install, unmount ISO and remove it
    mkdir ${mount_point}
    cd ${home_dir}
    /bin/mount -o loop ${iso_name} ${mount_point}
    tar zxf ${mount_point}/*.tar.gz && cd vmware-tools-distrib && ./vmware-install.pl --default
    /bin/umount ${mount_point}
    /bin/rm -rf ${home_dir}/${iso_name} ${home_dir}/vmware-tools-distrib
    rmdir ${mount_point}
fi