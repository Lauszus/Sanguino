# Sanguino
#### Developed by Kristian Sloth Lauszus, 2012

The code is released under the GNU General Public License.
_________
[![Build Status](https://travis-ci.org/Lauszus/Sanguino.svg?branch=master)](https://travis-ci.org/Lauszus/Sanguino)

This is a Sanguino third-party hardware add-on for the Arduino IDE.

To use this add-on simply add the following url: <https://raw.githubusercontent.com/Lauszus/Sanguino/master/package_lauszus_sanguino_index.json> to the Arduino boards manager. Please see the following page for more information: <https://learn.adafruit.com/add-boards-arduino-v164>.

Advanced users can install the hardware add-on manually by creating a folder named "hardware" inside your sketchbook directory. Now move the Sanguino directory inside that folder. The structure would look like this:

* Arduino/
	* hardware/
		* Sanguino/
			* avr/
			* bootloaders/
			* variants/
			* README.md
			* boards.txt

## PlatformIO

It is also possible to use this add-on with [PlatformIO](https://platformio.org/). For instace you can use the Sanguino ATmega644 or ATmega644A running at 16 MHz by creating the following entry in your platformio.ini file:

```ini
[env:sanguino_atmega644p]
platform = atmelavr
framework = arduino
board = sanguino_atmega644p
```

This will also allow you to specify the upload speed by adding the following entry:

```ini
upload_speed = 57600
```

This is needed if you have not burned the Optiboot bootloader.

The list of boards can be found here: <http://docs.platformio.org/en/latest/platforms/atmelavr.html#sanguino>.

## ATmega1284

Since the ATmega1284 is not supported by Avrdude. You will have to burn the bootloader manually from the command line. See this file for help: [ATmega1284.md](bootloaders/optiboot/ATmega1284.md).

Also check out the following site for more information: <http://blog.stevemarple.co.uk/2013/01/how-to-use-atmel-atmega1284-non-p.html>.

For more information see the following site: [http://www.arduino.cc/en/Guide/Environment#thirdpartyhardware](http://www.arduino.cc/en/Guide/Environment#thirdpartyhardware)
or send me an email at <a href="mailto:lauszus@gmail.com?Subject=Sanguino">lauszus@gmail.com</a>.
