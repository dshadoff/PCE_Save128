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

This repository includes the following folders:
EAGLE :
- these files are the project deisgn files for the PC Board in EAGLE
- Additional information for SMD assembly by JLCPCB are also included, files bom.csv and assembly.csv

firmware:
- This is the project folder for Lattice Diamond, using a MachXO2 FPGA of part number "LCMXO2-1200HC-4SG32C" - as found in the TinyFPGA AX2 board (which is used as a sub-assembly)
- key files are:
 - Save128.v - main verilog file
 - top.v - the top-level module
 - Save128.lpf - pin assignment settings file
 - testbench.v - a testbench which assists in visualizing various scenarios in simulation

release:
- Includes both an SRAM image (.bit) and Flash image (.jed).
- Filename base ends in "yyyymmdd" date format.

TODOs:
------
- shrink PC board
- possibly integrate the FPGA directly onto the main PC board
- design an enclosure of some sort

This is prototype software, and as such has been minimally tested.
Use at your own risk.
