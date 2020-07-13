# PCE_Save128
FPGA Implementation of reverse-engineered Memory Base 128/Save-Kun device

This project is designed to reimplement the features of the PC Engine's
Save-kun or Memory Base 128 devices in a modern FPGA device rather than a
customized ASIC.

SPI FeRAM is also in use, with the benefit of being non-volatile.

A MachXO2 FPGA was used due to its relatively low cost, internal Flash
reprogrammability, and simple power supply requirements. Additionally, the
TinyFPGA Ax-series of hobbyist boards helped to facilitate the prototyping
process.

The firmware is coded in Veriog using Lattice's Diamond software; the on-chip
SPI interface was not used; instead, a very limited set of SPI commands is
custom-written for communication with the FeRAM chip.

Change log:
- implemented PC Engine protocol side in Verilog
- successful simulation in EDAPlayground
- implementation into MiSTer FPGA system for further validation in conjunction
with the software driving its use

TODO:
- create board and import into project
- write the SPI I/O commands for the FeRAM

