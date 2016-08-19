action=$(config action)

shopt -s nocasematch;

if test $action = "install"; then

  for p in $(config list)
  do
  
    if [[ $os =~ "debian" ]]; then 
      run_story apt-get action install package $p
      set_stdout package-generic-done
    elif [[ "$os" =~ "ubuntu" ]]; then 
      run_story apt-get action install package $p
      set_stdout package-generic-done
    elif [[ "$os" =~ "centos" ]]; then
      run_story yum action install package $p
      set_stdout package-generic-done
    else
      set_stdout "unknown os: $os"
    fi
  
  done

elif test $action = "autoremove"; then
  run_story autoremove
  set_stdout package-generic-done
fi  

