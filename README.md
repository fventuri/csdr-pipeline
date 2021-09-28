# csdr pipeline

A simple pipeline for [csdr](https://github.com/jketterl/csdr)

See the file [fm_receiver.cpp](fm_receiver.cpp) for an example of a FM BC receiver.

To run the example reading the I/Q stream from the 'rx_tools' command:
```
rx_sdr -d driver=sdrplay -s 2000000 -f 90400000 -a 'Antenna C' -F CF32 - | ./fm_receiver
```
