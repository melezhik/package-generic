# SYNOPSIS

Generic package manager. Installs packages using OS specific package managers.

OS supported:

* Debian,Ubuntu -  apt
* CentOS - yum - TODO

# INSTALL

    $ sparrow plg install package-generic

# USAGE


    $ sparrow plg run package-generic --param list="'curl telnet nano'"

# Plugin parameters

## list

should be space separated list of packages to install. Example of usage by sparrow task:
 
  
    $ sparrow project create system
    $ sparrow task add system handy-packages package-generic
    $ sparrow task ini system handy-packages

    list nano hunspell mc

# AUTHOR

[Alexey Melezhik](mailto:melezhik@gmail.com)
