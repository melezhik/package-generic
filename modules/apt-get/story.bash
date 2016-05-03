package=$(story_var package)

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install $package >/dev/null

dpkg -s $package | grep Package:
dpkg -s $package | grep Version:
dpkg -s $package | grep Status:

