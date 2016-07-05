os=`uname -a`

shopt -s nocasematch;

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

set_stdout package-generic-done
