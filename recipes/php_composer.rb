#
# Cookbook Name:: linuxenv
# Recipe:: php_composer
#

include_recipe "apt"
include_recipe "apt::default"

# Setup and update

script "install composer" do
    interpreter "bash"
    creates "/usr/bin/composer"
    user "root"
    cwd "/tmp"
    code <<-EOH
        if [ ! -f /tmp/composer.phar ]; then
            curl -sS https://getcomposer.org/installer | php
        fi
        if [ ! -f  /usr/bin/composer ]; then
            mv /tmp/composer.phar /usr/bin/composer
        fi
    EOH
end

script "update composer" do
    interpreter "bash"
    timeout 15
    cwd "/tmp"
    code <<-EOH
        /usr/bin/composer self-update
    EOH
end