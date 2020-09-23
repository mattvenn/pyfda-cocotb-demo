# Audio filtering demo with pyfda and cocotb

This demo shows off [cocotb](https://github.com/cocotb/cocotb) and [pyfda](https://github.com/chipmuenk/pyfda).

# cocotb

cocotb lets you write your HDL simulations in Python, which is fantastic because it allows you to
leverage Python's huge library support (one of the [examples](https://docs.cocotb.org/en/stable/ping_tun_tap.html) is connecting a simulation to your local network).

In this demo I use Python's standard [wave](https://docs.python.org/3/library/wave.html) library to read and write wave files.
The [test.py](test.py) testbench sends the [input wave data](hello.wav) through a filter and writes the output to an [output wave file](out.wav)

# pyfda

pyfda is a filter design and analysis tool. It has a nice graphical front end and you can write FIR filters to a verilog module.
In this demo I design a high pass filter and export it to [filter.v](filter.v).
