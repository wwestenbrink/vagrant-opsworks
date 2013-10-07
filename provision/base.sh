# enable multiverse repositories
code_name=`lsb_release -c | awk '{ print $2 }'`
  cat <<EOM > /etc/apt/sources.list.d/$code_name-multiverse.list
  deb http://archive.ubuntu.com/ubuntu/ $code_name main universe
  deb-src http://archive.ubuntu.com/ubuntu/ $code_name main universe
  deb http://archive.ubuntu.com/ubuntu/ $code_name-updates main universe
  deb-src http://archive.ubuntu.com/ubuntu/ $code_name-updates main universe
  deb http://archive.ubuntu.com/ubuntu $code_name-security main universe
  deb-src http://archive.ubuntu.com/ubuntu $code_name-security main universe
  deb http://archive.ubuntu.com/ubuntu/ $code_name multiverse
  deb-src http://archive.ubuntu.com/ubuntu/ $code_name multiverse
  deb http://archive.ubuntu.com/ubuntu/ $code_name-updates multiverse
  deb-src http://archive.ubuntu.com/ubuntu/ $code_name-updates multiverse
  deb http://archive.ubuntu.com/ubuntu $code_name-security multiverse
  deb-src http://archive.ubuntu.com/ubuntu $code_name-security multiverse
  deb http://archive.ubuntu.com/ubuntu/ $code_name multiverse
  deb-src http://archive.ubuntu.com/ubuntu/ $code_name multiverse
  deb http://archive.ubuntu.com/ubuntu/ $code_name-updates multiverse
  deb-src http://archive.ubuntu.com/ubuntu/ $code_name-updates multiverse
  deb http://security.ubuntu.com/ubuntu $code_name-security multiverse
  deb-src http://security.ubuntu.com/ubuntu $code_name-security multiverse
EOM

# update the package repository
apt-get update

# install system updates
apt-get upgrade -y