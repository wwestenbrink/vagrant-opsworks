# install ruby1.8 & dependencies
apt-get install -y ruby ruby-dev rubygems libicu-dev libssl-dev libopenssl-ruby libxslt-dev libxml2-dev

# download & extract opswork-agent-installer
cd /usr/local
wget -O opsworks-agent.tgz https://opsworks-instance-agent.s3.amazonaws.com:443/214/opsworks-agent-installer.tgz
tar -xvzpof opsworks-agent.tgz

# build & install custom chef gem
cd opsworks-agent-installer/opsworks-agent/
gem install bundler --version 1.3.5 --no-ri --no-rdoc
bundle install --binstubs --system
ln -s /usr/local/opsworks-agent-installer/opsworks-agent/bin/chef-solo /usr/local/bin/chef-solo
