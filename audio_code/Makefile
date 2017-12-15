PROJECT=audio_code
SOURCES=$(PROJECT).c pff/pff.c pff/diskio.c
MMCU=atxmega16e5
F_CPU = 8000000

CFLAGS=-mmcu=$(MMCU) -Wall -Os -DF_CPU=$(F_CPU)

$(PROJECT).hex: $(PROJECT).out
	avr-objcopy -O ihex $(PROJECT).out $(PROJECT).c.hex;\
	avr-size --mcu=$(MMCU) --format=avr $(PROJECT).out
 
$(PROJECT).out: $(SOURCES)
	avr-gcc $(CFLAGS) -I./ -o $(PROJECT).out $(SOURCES)
 
program-bsd: $(PROJECT).hex
	avrdude -p x8e5 -c bsd -U flash:w:$(PROJECT).c.hex

program-dasa: $(PROJECT).hex
	avrdude -p x8e5 -P /dev/ttyUSB0 -c dasa -U flash:w:$(PROJECT).c.hex

program-avrisp2: $(PROJECT).hex
	avrdude -F -p x8e5 -P usb -c avrisp2 -U flash:w:$(PROJECT).c.hex

program-usbtiny: $(PROJECT).hex
	avrdude -p x8e5 -P usb -c usbtiny -U flash:w:$(PROJECT).c.hex

program-dragon: $(PROJECT).hex
	avrdude -p x8e5 -P usb -c dragon_isp -U flash:w:$(PROJECT).c.hex

program-ice: $(PROJECT).hex
	avrdude -v -p x16e5 -c atmelice_pdi -U flash:w:$(PROJECT).c.hex

program-jtag2pdi: $(PROJECT).hex
	avrdude -v -p x16e5 -c jtag2pdi -U flash:w:$(PROJECT).c.hex