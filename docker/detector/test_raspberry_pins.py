# import the GPIO and time package

import RPi.GPIO as GPIO
import time
GPIO.setmode(GPIO.BOARD) # definimos que la numeracion será en base  GPIO BOARD
# esta numeracion pone al pin superior izq como 1 y al pin superios derecho como 2, así sucesivamente
GPIO.cleanup()

GPIO.setup(5, GPIO.OUT)
# loop through 50 times, on/off for 1 second
for i in range(30):
	GPIO.output(5,GPIO.HIGH)
	time.sleep(2)
	GPIO.output(5,False)
	time.sleep(2)
GPIO.cleanup()
