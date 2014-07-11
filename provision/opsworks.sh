# install dependencies
apt-get install -y curl libxml2-dev libxslt-dev libyaml-dev

# create opsworks directories and seed them with expected config files
mkdir -p /etc/aws/opsworks/ /opt/aws/opsworks/ /var/log/aws/opsworks/ /var/lib/aws/opsworks/ /var/lib/cloud/
cp opsworks/* /var/lib/aws/opsworks/

# download and install opsworks-agent and all support files
cd $(mktemp -d)
wget -O opsworks-agent.tgz https://opsworks-instance-agent.s3.amazonaws.com:443/316/opsworks-agent-installer.tgz
tar -xvzpof opsworks-agent.tgz
cd opsworks-agent-installer/opsworks-agent/bin/
./installer_wrapper.sh

# ensure we can access the opsworks chef gem
echo "export PATH=\$PATH:/opt/aws/opsworks/current/bin" > /etc/profile.d/opsworks_path.sh

# don't automatically run opsworks-agent
rm -f /etc/monit.d/opsworks-agent.monitrc /etc/monit/conf.d/opsworks-agent.monitrc
