package=$(story_var package)

sudo yum -y install $package >/dev/null

yum -q list installed $package &>/dev/null && echo "Installed" || echo "Not installed"


