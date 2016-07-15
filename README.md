# SYNOPSIS

Generic package manager. Installs packages using OS specific package managers.

OS supported:

* Debian,Ubuntu -  apt
* CentOS - yum

# INSTALL

    $ sparrow plg install package-generic

# USAGE

## Manually 

    $ sparrow plg run package-generic --param list="'curl telnet nano'"

## Sparrowdo

    task_run  %(
      task => 'install my packages',
      plugin => 'package-generic',
      parameters => %( list => 'nano hunspell mc' )
    );
    
# Plugin parameters

## list

Should be space separated list of packages to install. Example of usage by sparrow task:
 
    list nano hunspell mc

## action

Should be one of two: `install|autoremove`. Autoremove is only supported for Debian, Ubuntu systems.
Default value `install`;

# AUTHOR

[Alexey Melezhik](mailto:melezhik@gmail.com)
