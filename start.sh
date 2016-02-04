#!/bin/bash
echo "Running vagrant..."
vagrant up
exec vagrant ssh -c "cd /vagrant/workspace/; /bin/bash"
