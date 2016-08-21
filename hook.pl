my $action=config()->{action};


unless ( os() eq 'debian2' or os() eq 'ubuntu' or os()=~/centos/){
  die "unsupported os: ".os();
}


if ($action eq 'install'){

  for my $p (split /\s/, config()->{list}){

    if ( os() eq 'debian' ){
      run_story('apt-get', { action => 'install', package => $p });
    } elsif ( os() eq 'ubuntu'){
      run_story('apt-get', { action => 'install', package => $p });
    } else {
      run_story('yum', { action => 'install', package => $p });
    }
  }

}elsif( $action eq 'autoremove') {
      run_story('autoremove');
}else{
  die "unknown action: $action";
}



