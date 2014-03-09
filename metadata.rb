name "linuxenv"
description "Robo47 Linux Environment Recipes - Different stuff for linux (ubuntu/debian) / php / git / zsh"
maintainer "Benjamin Steininger"
maintainer_email "robo47@robo47.net"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version "0.5.0"

depends "apt"
depends "sudo"

supports "ubuntu"
supports "debian"

recipe  "default", "Installs and configures everything defined"
recipe  "ant", "ant and ant-contrib"
recipe  "bash", "bash and aliases"
recipe  "git", "git"
recipe  "php55", "php 5.5 apt-ppa ondrej/php5"
recipe  "php_cli", "php5 for the commandline with many extensions and mongo-extension"
recipe  "php_composer", "composer"
recipe  "sudo", "sudo"
recipe  "tools", "different tools (monitoring, dvcs, ... )"
recipe  "zsh", "zsh with oh-my-zsh"