# SCL_Workshop_24

![Workshop Logo](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/c0061cfb-501c-459f-8708-ad6923446105)

## About 
Welcome to the Standard Cell Design Workshop repository. Here, you'll find all the necessary files and resources for a hands-on learning experience.

## Workshop Flow

![Workshop Flow](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/95d610c6-3cab-4664-870e-0087694cadf2)

## Table of Contents
1. [Day 1](#day-1)
   - [Schematic Design](#schematic-design)
     - [Design](#design)
     - [Simulation](#simulation)
   - [Functional Simulation](#functional-simulation)
   - [Synthesis](#synthesis)
2. [Day 2](#day-2)
   - [Introduction to Standard Cell Design Flow](#introduction-to-standard-cell-design-flow)
   - [Standard Cell Design Rules](#standard-cell-design-rules)
   - [Characterization - Liberty File Creation](#characterization-liberty-file-creation)
   - [Abstraction - LEF File Creation](#abstraction-lef-file-creation)
   - [Gate Level Simulation](#gate-level-simulation)
3. [Acknowledgment](#acknowledgment)


# Day 1 

## Schematic Design 
### Design 

1. Design a simple symmetrical Inverter and NAND.

Follow the below-mentioned naming conventions for your design: 
   - Use INV1X1 with pin names A, VDD, GND, and Z for the inverter.
   - Use NAND2X1 with pin names A, B, VDD, GND, and Z for the NAND gate.

3. Create a symbol file. 

### Simulation

Do the following simulation and report the following values:

1. Transient Analysis
    - Power
    - Delay: Tpd, Tpdf, Tpdr
    - Noise Margin: VOH, VOL, VIL, VIH
      
2. DC Analysis and Parametric Analysis
    - Wp and Wn values for which symmetrical DC Curve
    - Noise Margin: VOH, VOL, VIL, VIH

# Functional Simulation 

The aim is to Simulate a simple design (e.g., counter, mux) using Cadence nclaunch. The design and testbench files are present in the files directory.

# Synthesis

The aim is to Synthesize your design using gpdk45 technology with Cadence Genus. The TCL script used for synthesis is present in the files directory.

Feel free to reach out if you have any questions or need assistance.

# Acknowledgment
We would like to thank all the professors for making this workshop possible. A special thanks to CHIPS and Dr. Madhura Ma'am for all the guidance and support. And of course all the participants for your active participation


