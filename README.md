Using a GPIOs on CP2104 adapter
===============================

This git contains module code to use the GPIOs on cp2104 adapter
with Linux.
It also contains code to programm a PIC MCU. The programming
is slow but enough to flash a bootloader. 

Using as PIC programmer
-----------------------

This is an adaption of the k8048 software from Darron Broad.

<pre><code>
Breadboard connections for LVP programming with VPP at 3V3
\----------------------------------------------------------
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
</pre></code>
