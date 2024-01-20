# SCL_Workshop_24

![Workshop Logo](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/c0061cfb-501c-459f-8708-ad6923446105)

## About 
Welcome to the Standard Cell Design Workshop repository. Here, you'll find all the necessary files and resources for a hands-on learning experience.

## Workshop Flow

![SCL_tool_flow](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/6e3db959-403e-4afe-a491-928cb756a272)

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

## Functional Simulation 

The aim is to Simulate a simple design (e.g., counter, mux) using Cadence nclaunch. The design and testbench files are present in the files directory.

## Synthesis

The aim is to Synthesize your design using gpdk45 technology with Cadence Genus. The TCL script used for synthesis is present in the files directory.



# Day 2: 

## Standard Cell Design Rules
{ work in progress }

## Characterization - Liberty File Creation

### **Characterization of standard cells using Cadence Liberate:**

**1. Prepare the Netlist:**

- In Virtuoso, create a schematic containing instances of all cells to be characterized.
  ![image](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/7b243a7d-5fe4-4114-9f0f-405178e746bc)

- Ensure the simulator is set to Spectre in the Setup Environment.
       ![image](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/586e100f-4c24-4d51-a03c-59fc327a32fb)

- Prefix the switch view list with "av_extractor" in the Setup Environment.
  ![image](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/c9f92033-3dc4-4c14-9593-9f75be6112da)

- Generate a netlist using Netlist -> Create. 

![image](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/38168032-127e-4e8b-9bcd-7fba31a54290)


Save the netlist as a "SCL.scs" file.

![image](https://github.com/VardhanSuroshi/SCL_Workshop_24/assets/132068498/56c18754-7dbf-4956-82a8-625d6f6e7a97)

  

**2. Extract and Modify Individual Cell Netlists:**

- Use the provided `fixed.pl` Perl script to extract individual cell netlists from the combined .scs file:
  ```bash
  fixed.pl < SCL.scs
  ```
- Copy the list of extracted cell names.

**3. Edit Template File:**

- Edit the `templates/template.tcl` file:
  - Paste the copied cell names into the `cells_list` variable.
  - Adjust settings like `max_transition` and `voltage_list` as needed.
  - Modify the `create_lib_cell` commands to match your cell names and pins.

**4. Prepare Cell Area Data:**

- In the `areas.txt` file, list each cell's name and area (measured from layout).
- Use the provided Perl script to generate user data files:
  ```bash
  perl areas_to_user_data.pl < areas.txt
  ```

**5. Verify and Run Characterization Script:**

- Check the `char.tcl` file for accuracy in file paths, voltages, temperatures, process corners, and references to the template and cell list.
- Set up the Liberate environment (source the appropriate setup script).
- Run the characterization script:
  ```bash
  liberate -f char.tcl
  ```

**6. Review Results:**

- Liberate will create a characterized library (.ccs and .ccsm files) and a datasheet.
- Verify the accuracy of the characterization results.


## Abstraction - LEF (Library Extension Format) File Creation
{ work in progress }

### In this Stage we look into the following 
- Understand hte need of .lef file
- Overview of .lef file
- Generate  .lef file using Virtuoso and Abstract Generator tools
- Post processing .lef file


## LEF file generation 
- virtuoso - Technological part
- Abstract - Cell decriptive part 

### Pre-requisite 
Minimum Cells - for standard cell creation: 
- D flip-flop (DFFSR)
- NAND gate (NAND2X1)
- NOR gate (NOR2X10)
- Inverter gate (INV1X1)

Naming format 
```
<gate - name><#of inputs><drive -strength>
```
```
for example:

< gate-name = INV><#of inputs = 1><drive - strength = X1> = INV1X1
```

## Methodology 

- Step 1 : Creation of new technology library
- Step 2 : Generating technilogy descriptive (Header) part of LEF file.
- Setp 3 : Generating Cell description part of LEF.
- Setp 4 : Post processing LEF file. 







# Acknowledgment
We would like to thank all the professors for making this workshop possible. A special thanks to CHIPS and Dr. Madhura Ma'am for all the guidance and support. And of course all the participants for your active participation


