#
# Cookbook Name:: wp-cli
# Recipe:: default
#
# Author: Rubem Nakamura
# License: MIT
#

directory node['wp-cli']['dir'] do
  recursive true
end

remote_file "#{node['wp-cli']['dir']}/wp-cli.phar" do
  source 'https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar'
  mode 0755
  action :create_if_missing
end

node.default['wp-cli']['bin'] = ::File.join(node['wp-cli']['dir'], 'wp-cli.phar')

link node['wp-cli']['link'] do
  to node['wp-cli']['bin']
  only_if { node['wp-cli']['link'] }
end
