# change the default frontend of debconf
export DEBIAN_FRONTEND=noninteractive

# enable multiverse repositories
apt-get install -y software-properties-common
add-apt-repository multiverse

# update the package repository
apt-get update

# install system updates
apt-get upgrade -y

# force ubuntu to boot without gui interation
echo "GRUB_RECORDFAIL_TIMEOUT=10" >> /etc/default/grub
update-grub