# ThreadNeck
Following the "Thread": Toward a Systematic Approach to Find Manipulatable Bottleneck In Blockchain Client

## Requirements:
Kernel: version 4.4 and newer. You also need to enable the KProbe and CONFIG_SCHEDSTATS features.

It is suggestted to use the Ubuntu 16.04.1.


```
sudo apt-get install openjdk-11-jdk

sudo apt-get install build-essential linux-headers-$(uname -r)

sudo apt-get install ifstat

```

install sysstat from sources

```
git clone git://github.com/sysstat/sysstat

cd sysstat
./configure
./configure --enable-install-cron
make
sudo make install
```


## Compile flag
C program: compile program with "-g" option.
Java program: start JVM with the option "-XX:+PreserveFramePointer"
Rust program:  enable the "force-frame-pointers=yes" and "debug=true" flag. 








