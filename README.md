# csdr pipeline

A simple pipeline for [csdr](https://github.com/jketterl/csdr)

Some examples:
  - FM BC receiver: [fm_receiver.cpp](fm_receiver.cpp)
  - D-Star receiver: [dstar_receiver.cpp](dstar_receiver.cpp)

To run the FM BC receiver example reading the I/Q stream from the 'rx_sdr' command from [rx_tools](https://github.com/rxseger/rx_tools):
```
rx_sdr -d driver=sdrplay -s 2000000 -f 90400000 -a 'Antenna C' -F CF32 - | ./fm_receiver
```

To run the D-Star receiver example:
```
rx_sdr -d driver=sdrplay -s 2000000 -f 146500000 -a 'Antenna C' -F CF32 - | ./dstar_receiver 
```
