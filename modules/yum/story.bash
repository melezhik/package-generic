package=$(story_var package)

echo trying to install $package ... 

yum -y -q install $package || exit 1

yum -q list installed $package || exit 1 

echo "$package Installed OK"


