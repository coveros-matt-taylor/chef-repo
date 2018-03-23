#
# Cookbook:: hello_world_server
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# install tomcat
yum_package 'tomcat' do
  options "-y"
end

service 'tomcat' do
  action [:enable, :start]
  #provider Chef::Provider::Service::Systemd
end
# finding docker image that images init finds for platform in kitchen yml
# sol 2:

yum_package 'wget' do
  options "-y"
end

template '/etc/yum.repos.d/Nexus-Hello-World.repo' do
  source 'Nexus-Hello-World.repo'
  owner 'centos'
  group 'centos'
  mode '0755'
end

bash 'setup_yum' do
  cwd ::File.dirname('/home/centos')
  code <<-EOH
    yum clean all
    yum install hello-world -y
    EOH
end

bash 'restart_tomcat' do
  cwd ::File.dirname('/tmp')
  code <<-EOH
    service tomcat restart
    EOH
end
