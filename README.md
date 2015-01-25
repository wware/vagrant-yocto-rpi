Vagrant-Yocto/Bitbake-RaspberryPi
=======

The idea here is to be able to quickly spin up a RasPi development environment
with Yocto/Bitbake.

Maybe Vagrant isn't the way to do this, because (at least on my macbook) it
relies on a virtualbox instance, which isn't very fast. Some day soon I'll move
this effort to the much faster Linux box, and then Docker might make more sense
as a more performant thing there, because Bitbake is slow as molasses.
According to [a paper by
IBM](http://domino.research.ibm.com/library/cyberdig.nsf/papers/0929052195DD819C85257D2300681E7B/$File/rc25482.pdf),
a Docker instance is almost exactly performant as the native platform.
