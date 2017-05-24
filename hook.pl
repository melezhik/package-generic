my $action=config()->{action};


unless ( os() eq 'debian' or os() eq 'ubuntu' or os()=~/centos/){
  die "unsupported os: ".os();
}

my $list = config()->{list};


if ($action eq 'install'){

  if (ref $list and (ref $list  eq 'HASH') ){ # a package list is given as HASH
    for my $os (keys %$list) {
      next unless $os eq os(); # install only packages for a target OS
      for my $p (@{$list->{$os}}){
        install_package($p,$os);  
      }
    }
  } else {
    for my $p (split /\s/, $list ){ # a package list is given as String
      install_package($p,os());  
    }
  }

}elsif( $action eq 'autoremove') {
      run_story('autoremove');
}else{
  die "unknown action: $action";
}

sub install_package {
  my $p = shift;
  my $os = shift;
  if ( $os eq 'debian' ){
    run_story('apt-get', { action => 'install', package => $p });
  } elsif ( $os eq 'ubuntu'){
    run_story('apt-get', { action => 'install', package => $p });
  } else {
    run_story('yum', { action => 'install', package => $p });
  }
  return;
}


