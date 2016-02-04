#!/usr/bin/env bash

# root su yourself
sudo su

export DEBIAN_FRONTEND=noninteractive

# way of checking if you we need to install everything
if [ ! -e "/var/workspace" ]; then
    # Add mongo to apt
    apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10 &> /dev/null
    echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' \
		> /etc/apt/sources.list.d/mongodb.list

    # Update and begin installing some utilities and the latest stable of mongo
	echo "Updating apt..."
    apt-get update > /dev/null

	echo "Installing tools (vim git curl build-essential).."
    apt-get install -y vim git curl build-essential &> /dev/null

	echo "Installing mongodb..."
	apt-get install -y mongodb-org &> /dev/null

	# Install Node
  echo "Installing nodejs 4.2.x LTS..."
  curl -sL https://deb.nodesource.com/setup_4.x | bash -
  apt-get install -y nodejs > /dev/null

	# Install StrongLoop
	echo "Installing strongloop..."
	npm install -g strongloop > /dev/null
	echo "done."

	# Symlink our host node-apps to the guest /var/node-apps folder
	ln -s /vagrant/workspace /var/workspace

	echo "Your workspace folder is in /vagrant/workspace/"
fi
