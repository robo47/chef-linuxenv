#
# Cookbook Name:: linuxenv
# Recipe:: php_cli
#

include_recipe "apt"
include_recipe "apt::default"

## Setup php for cli, php.ini, mongo-extension

%w{libpcre3 libpcre3-dev php5-cli php5-common php5-curl php5-dev php5-geoip php5-imagick php5-intl php5-json php5-mcrypt php5-memcached php5-mysql php5-sqlite php5-tidy php-pear php5-xdebug php5-xmlrpc php5-xsl}.each do |pkg|
    package pkg do
        action :install
    end
end

cookbook_file "/etc/php5/cli/php.ini" do
    source "php.cli.ini"
    mode "0644"
end

cookbook_file "/etc/php5/mods-available/mongo.ini" do
    source "php5-mod-mongo.ini"
    mode "0644"
end

script "php5 mongo" do
    interpreter "bash"
    user "root"
    cwd "/tmp"
    code <<-EOH
        pecl install mongo
        php5enmod mongo
    EOH
end

