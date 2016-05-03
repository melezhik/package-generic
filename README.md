# SYNOPSIS

Generic package manager. Installs packages using OS specific package managers.

Package managers supported:

* apt (Debian)
* yum (CentOS) - TODO

# USAGE

    $ sparrow plg install package-generic
    $ sparrow project create system
    $ sparrow check add system install-pkg
    $ sparrow check set system install-pkg package-generic
    $ sparrow check ini system install-pkg
    # the list of packages should be space separated list
    list = curl telnet nginx

    $ sparrow check run system install-pkg

# Runtime configuration 

    $ sparrow check run system install-pkg --param list='foo bar baz'

# AUTHOR

Alexey Melezhik
