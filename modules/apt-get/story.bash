package=$(story_var package)

echo trying to install $package ...
echo installer - apt-get

DEBIAN_FRONTEND=noninteractive apt-get install -y -qq $package

dpkg -s $package | grep Package:
dpkg -s $package | grep Version:
dpkg -s $package | grep Status:

