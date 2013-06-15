#### Developed by Kristian Lauszus, TKJ Electronics 2012

The code is released under the GNU General Public License.
_________

This is a Sanguino third-party hardware add-on for the Arduino IDE.

To use it, simply create a folder named hardware inside your sketchbook directory.
Now move the Sanguino directory inside that folder. The structure would look like this:

* Arduino/
	* hardware/
		* Sanguino/
			* avr/
			* bootloaders/
			* cores/
			* variants/
			* README.md
			* boards.txt

Since the ATmega1284 is not supported by Avrdude. You will have to burn the bootloader manually from the command line. See this file for help: [ATmega1284.md](bootloaders/optiboot/ATmega1284.md).

Also check out the following site for more information: <http://blog.stevemarple.co.uk/2013/01/how-to-use-atmel-atmega1284-non-p.html>.

For more information see the following site: [http://www.arduino.cc/en/Guide/Environment#thirdpartyhardware](http://www.arduino.cc/en/Guide/Environment#thirdpartyhardware)
or send me an email at <a href="mailto:kristianl@tkjelectronics.dk?Subject=Sanguino">kristianl@tkjelectronics.dk</a>.