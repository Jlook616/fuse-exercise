#
# Cookbook:: apache2
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

apt_update 'update-cache' do 
	action :update
end

package 'apache2'

template '/var/www/html/fuse.html' do
	source 'fuse.html.erb'
end

template '/etc/apache2/sites-available/000-default.conf' do
	source 'default.conf.erb'
end

service 'apache2' do
	supports status: true 
	action [:enable, :restart]
end
