#!/bin/bash

# Remove extra repos
rm -f /etc/apt/sources.list.d/extrepo_droidian.sources
rm -f /etc/apt/sources.list.d/extrepo_mobian.sources
rm -f /var/lib/extrepo/keys/hybris-mobian.asc
rm -f /var/lib/extrepo/keys/mobian.asc

# Nuke /etc/apt/sources.list
> /etc/apt/sources.list

# Finally update again
apt update

# Remove temporary apt configuration
rm -f /etc/apt/apt.conf.d/90-apt-cache

exit 0
