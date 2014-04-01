Using GPIOs on CP2104 adapter
=============================
This git contains module code to use the GPIOs on cp2104 adapter with Linux.

![alt text](https://raw.githubusercontent.com/GBert/CP2104_GPIO/master/images/cp2104.jpg "cp2104")

It also contains code to programm PIC MCUs.

Howto use the kernel module
---------------------------
```
git clone https://github/GBert/https://github.com/GBert/CP2104_GPIO
cd CP2104_GPIO
# decide which module to use
uname -a
# for kernels <= 3.6
cp cp2104_3.6.c cp2104.c
# for kernel > 3.6
cp cp2104_3.10.c cp2104.c
make
# remove existing module and install modified module
sudo rmmod cp210x
sudo insmod ./cp2104.ko
```

Using as PIC programmer
-----------------------
The original [k8048 code](http://dev.kewl.org/k8048/Doc/) is able to programm a wide range of PICs 
in Low Voltage Programming (aka LVP) mode. There is an inplementation using cheap USB to serial
converters like the CP2102 based boards. But you run ouf of output pins if you have PICs with
PGM pin. I've modified the original code to use the GPIOs on CP2104 boards which are able to do it.

BTW: The slow programming speed is caused by the USB interface. The k8048 code itself is very
fast if you use GPIOs on boards like RPi or OpenWrt router.

Interfacing to PIC MCU
----------------------
The GPIOs are normally open-drain so pull-ups are needed.

``` 
Breadboard connections for LVP programming with VPP at 3V3
----------------------------------------------------------
 CP2104                            PICMicro
 ======                            ========
 3V3-------------------------------VDD----------+
                                                |
 GND-------------------------------VSS          |
                                                |
 GPIO 1----------------------------VPP---4.7K---+    
                                                |
 GPIO 2----------------------------PGC---4.7K---+    
                                                |
 GPIO 3----------------------------PGD---4.7K---+
                                                |
 GPIO 0----------------------------PGM---4.7K---+
(1) Not used by all LVP compatible devices.
```
### Using

#### Compile and install:
```
cd k8048_cp2104
make ; sudo make install
# copy the config file
cp dotconf/cp2104_gpio ~/.k8048
````

#### Quick Test
```
% time k16 id
[000000] [PROGRAM]     2000 WORDS (0100 ROWS OF 0020 WORDS)
[200000] [IDLOCATION1] FF .
[200001] [IDLOCATION2] FF .
[200002] [IDLOCATION3] FF .
[200003] [IDLOCATION4] FF .
[200004] [IDLOCATION5] FF .
[200005] [IDLOCATION6] FF .
[200006] [IDLOCATION7] FF .
[200007] [IDLOCATION8] FF .
[300000] [CONFIG1]     7500
[300002] [CONFIG2]     1E23
[300004] [CONFIG3]     0000
[300006] [CONFIG4]     008D
[300008] [CONFIG5]     C003
[30000A] [CONFIG6]     8003
[30000C] [CONFIG7]     4003
[3FFFFE] [DEVICEID]    4760 DEV:23B REV:00 PIC18F14K50
[F00000] [DATA]	       0100 BYTES
k16 id  0,06s user 0,00s system 1% cpu 5,129 total
```
