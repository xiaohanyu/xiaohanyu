#!/bin/bash

# install the latest pandoc
sudo apt-get update && sudo apt-get -y install jq
# Get the latest .deb released.
wget $(curl https://api.github.com/repos/jgm/pandoc/releases/16594963 | jq -r '.assets[] | .browser_download_url | select(endswith("deb"))') -O pandoc.deb
sudo dpkg -i pandoc.deb
