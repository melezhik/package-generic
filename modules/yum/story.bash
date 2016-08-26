package=$(story_var package)

echo trying to install $package ...
echo installer - yum 

if yum -q list installed $package 2>/dev/null ; then
  yum -q list installed $package
else
  yum makecache fast
  yum -y -q install $package || exit 1
  yum -q list installed $package || exit 1 
fi

echo done


