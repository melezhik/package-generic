action=$(config action)

os=`uname -a; cat /etc/issue; cat /etc/*-release`

shopt -s nocasematch;

if test $action = "install"; then

  for p in $(config list)
  do
  
    if [[ $os =~ "debian" ]]; then 
      run_story apt-get action install package $p
    elif [[ "$os" =~ "ubuntu" ]]; then 
      run_story apt-get action install package $p
    elif [[ "$os" =~ "centos" ]]; then
      run_story yum action install package $p
    fi
  
  done

elif test $action = "autoremove"; then
  run_story autoremove
fi  

set_stdout package-generic-done
