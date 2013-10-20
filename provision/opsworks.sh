# install ruby1.8 & dependencies
apt-get install -y ruby ruby-dev rubygems libicu-dev libssl-dev libopenssl-ruby libxslt-dev libxml2-dev

# download & extract opswork-agent-installer (release 209)
wget -O /tmp/opsworks-agent.tgz https://opsworks-instance-agent.s3.amazonaws.com:443/209/opsworks-agent-installer.tgz
cd /tmp && tar -xvzpof opsworks-agent.tgz

# build & install custom chef gem
cd opsworks-agent-installer/opsworks-agent/vendor/gems/chef-11.4.4
gem build chef.gemspec
gem install chef-11.4.4.gem --no-ri --no-rdoc