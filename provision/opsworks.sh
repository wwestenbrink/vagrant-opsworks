# install dependencies
apt-get install -y libxml2-dev libxslt-dev libyaml-dev

# install opsworks ruby 2.0.0-p451
wget -O /tmp/ruby.deb https://opsworks-instance-assets.s3.amazonaws.com/packages/ubuntu/12.04/opsworks-ruby2.0_2.0.0-p451.1_amd64.deb
dpkg -i /tmp/ruby.deb

# download & extract opswork-agent-installer
cd /usr/local
wget -O opsworks-agent.tgz https://opsworks-instance-agent.s3.amazonaws.com:443/306/opsworks-agent-installer.tgz
tar -xvzpof opsworks-agent.tgz

# build & install custom chef gem
cd opsworks-agent-installer/opsworks-agent/
gem install bundler --version 1.5.3 --no-ri --no-rdoc
bundle install --binstubs --system
mv /usr/local/bin/chef-solo /usr/local/bin/chef-solo.original
ln -s /usr/local/opsworks-agent-installer/opsworks-agent/bin/chef-solo /usr/local/bin/chef-solo
