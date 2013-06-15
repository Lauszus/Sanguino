Note this is __ONLY__ for the ATmega1284 running at 16MHz you have to compile the 8MHz bootloader yourself.

To burn the bootloader for the ATmega1284 use the following command:

```
make atmega1284_isp LFUSE=FF HFUSE=DE EFUSE=FD ISPPORT=/dev/tty.usbmodem26411
```

Also make sure to add -F to ISPFUSES and ISPFLASH in [Makefile.isp](Makefile.isp).