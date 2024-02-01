# SCL_Workshop_24

![Workshop Logo](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/c0061cfb-501c-459f-8708-ad6923446105)

# About 
Welcome to the Standard Cell Design Workshop repository. Here, you'll find all the necessary files and resources for a hands-on learning experience.

# Workshop Flow
![tool_flow_pes](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/75a8856c-177e-48ac-b1ce-04c5df35a486)


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
   - [Synthesis](#synthesis)
   - [Gate Level Simulation](#gate-level-simulation) 
3. [Conclusion](#conclusion)
4. [Acknowledgment](#acknowledgment)


# Day 1 

## Schematic Design 
### Design 

1. Design a simple symmetrical Inverter and NAND.

Follow the below-mentioned naming conventions for your design: 
   - Use INV1X1 with pin names A, VDD, GND, and Z for the inverter.
   - Use NAND2X1 with pin names A, B, VDD, GND, and Z for the NAND gate.

3. Create a symbol file. 

### Simulation

Note: Conduct all the simulations in a separate file.

Do this simulation and report the following values:

1. Transient Analysis
    - Power
    - Delay: Tpd, Tpdf, Tpdr
    - Noise Margin: VOH, VOL, VIL, VIH
      
2. DC Analysis and Parametric Analysis
    - Wp and Wn values for which symmetrical DC Curve
    - Noise Margin: VOH, VOL, VIL, VIH

## Functional Simulation 

The aim is to Simulate a simple design (e.g., counter, mux) using Cadence nclaunch. The design and testbench files are present in the files directory.

## Synthesis

The aim is to Synthesize your design using gpdk45 technology with Cadence Genus. The TCL script used for synthesis is present in the files directory.



# Day 2: 

## Standard Cell Design Rules
Refer to the lecture slides to understand standard cell design rules. 

## Characterization - Liberty File Creation
Details of characterisation steps can be found in the characterisation [directory](https://github.com/VardhanSuroshi/SCL-Design-Workshop-24/tree/main/characterization) 

## Abstraction - LEF File Creation
Details of steps to create a LEF File can be found in the abstraction [directory](https://github.com/VardhanSuroshi/SCL-Design-Workshop-24/tree/main/abstraction)


# Conclusion


# Acknowledgment
We would like to thank all the professors for making this workshop possible. A special thanks to CHIPS and Dr. Madhura Ma'am for all the guidance and support. And of course all the participants for your active participation


