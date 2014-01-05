To burn the bootloader for the ATmega1284 running at 16MHz use the following command:

```
make atmega1284p_isp ISPPORT=/dev/tty.usbmodem26411
```

To burn the 8MHz bootloader use the following command:

```
make atmega1284p_8m_isp ISPPORT=/dev/tty.usbmodem26411
```

Also make sure to add -F to ISPFUSES and ISPFLASH in [Makefile.isp](Makefile.isp).