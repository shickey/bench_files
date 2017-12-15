import serial
import sys


#
#  check command line arguments
#
if (len(sys.argv) != 2):
   print "command line: hello.txrx.45.py serial_port"
   sys.exit()
port = sys.argv[1]
#
# open serial port
#
ser = serial.Serial(port,9600)
ser.setDTR()


while 1:
   byte2 = 0
   byte3 = 0
   byte4 = 0
   ser.flush()

   #
   # find framing 
   #
   while 1:
      byte1 = byte2
      byte2 = byte3
      byte3 = byte4
      byte4 = ord(ser.read())
      if ((byte1 == 1) & (byte2 == 2) & (byte3 == 3) & (byte4 == 4)):
         break

   #
   # read
   #
   val_1Alow = ord(ser.read())
   val_1Ahigh = ord(ser.read())
   val_1A = (256 * val1A_low) + val1A_high

   val_1Blow = ord(ser.read())
   val_1Bhigh = ord(ser.read())
   val_1B = (256 * val1B_low) + val1B_high

   val_2Alow = ord(ser.read())
   val_2Ahigh = ord(ser.read())
   val_2A = (256 * val2A_low) + val2A_high

   val_2Blow = ord(ser.read())
   val_2Bhigh = ord(ser.read())
   val_2B = (256 * val2B_low) + val2B_high

   print("Values 1A: " + str(val1A) + "   1B: " + str(val1B) + "   2A: " + str(val2A) + "   2B: " + str(val2B))