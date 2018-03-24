#
# Cookbook:: oracle_listener
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

directory "#{node['oracle']['rdbms']['ora_home']}/network/admin" do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
end

template "#{node['oracle']['rdbms']['ora_home']}/network/admin/listener.ora" do
  source 'listener.erb'
  owner 'root'
  group 'root'
end
