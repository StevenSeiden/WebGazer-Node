import math
import sys
from pynput.mouse import Button, Controller

mouse = Controller()
output = open("output.txt", "w")
recordData = True


while True:
    currentMousePos = mouse.position

   
    # Outputting data when recording
    if recordData:
        # Outputting -> x gaze position, y gaze position, user's distance from camera, x cursor position, y cursor position
        output.write(str(currentMousePos[0]) + "," + str(
                currentMousePos[1]) + "\n")

        print(currentMousePos[0],currentMousePos[1])

    #if keyboard.is_pressed('q'):
    #    break

    #if keyboard.is_pressed('r')::
    #   recordData = not recordData

writer.release()
output.close()
