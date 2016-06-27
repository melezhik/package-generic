os=`cat /etc/*-release|grep -e ^ID=`
echo $os
echo OK

for p in $(config list)
do
  if test "${os}" = "ID=debian" || test "${os}" = "ID=ubuntu"; then
    run_story apt-get action install package $p
  elif test "${os}" = "ID=centos"; then
    run_story yum action install package $p 
  fi
done

set_stdout done
