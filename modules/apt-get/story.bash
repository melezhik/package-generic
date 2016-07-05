package=$(story_var package)

echo trying to install $package ...
echo installer - apt-get

sudo DEBIAN_FRONTEND=noninteractive apt-get -y install $package >/dev/null

dpkg -s $package | grep Package:
dpkg -s $package | grep Version:
dpkg -s $package | grep Status:

