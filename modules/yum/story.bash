package=$(story_var package)

echo trying to install $package ... 

yum -y -q install $package 

yum info -q $package 

yum -q list installed $package &>/dev/null && echo "Installed" || echo "Not installed"


