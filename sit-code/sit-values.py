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
   byte1 = 0
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
   val_1A = (256 * val_1Ahigh) + val_1Alow

   val_1Blow = ord(ser.read())
   val_1Bhigh = ord(ser.read())
   val_1B = (256 * val_1Bhigh) + val_1Blow

   val_2Alow = ord(ser.read())
   val_2Ahigh = ord(ser.read())
   val_2A = (256 * val_2Ahigh) + val_2Alow

   val_2Blow = ord(ser.read())
   val_2Bhigh = ord(ser.read())
   val_2B = (256 * val_2Bhigh) + val_2Blow

   avg1 = (val_1A + val_1B) / 2
   avg2 = (val_2A + val_2B) / 2
   # print("Values 1A: " + str(val_1A) + "   1B: " + str(val_1B) + "   2A: " + str(val_2A) + "   2B: " + str(val_2B))
   print("Avg 1: " + str(avg1) + " Avg 2: " + str(avg2))