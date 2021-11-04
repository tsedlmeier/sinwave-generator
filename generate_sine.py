# This Script takes 3 Args and generates values for Sine
#    -> filename 
#    -> freq
#    -> ampl
# val = ampl* sin(freq) stored in filename

import sys
import struct
import numpy as np
import matplotlib.pyplot as plt


def main(argv):

    filename = sys.argv[1]
    
    #N = int(sys.argv[2]) # Stützstellen
    #ampl = float(sys.argv[3])


   
    # Generate Sine Vals
    N = 256
    t = np.arange(N)
    signal = (np.sin(2*np.pi*t/float(N)) + 1) *511 
    print(signal) 
    # -1 : 1 --> -1 = 0x0  : 1 : 0x3FF (1023) 
    # -1:1  +1 * 511)

    # Show generated Signal
    #plt.plot(signal)
    #plt.show()

    signal_bytes = signal
    # Store Values in specified file
    f = open(".\\sinewave_generator\\source\\impl_1{}".format(filename), "w")
    for i in range(0,N):
        f.write("{}\n,".format(str(hex(int(signal_bytes[i]))[2:])))
    
    f.close()



if __name__ == "__main__":
   main(sys.argv[1:])