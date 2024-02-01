### In this Stage we look into the following 
- Understand the need for a .lef file
- Overview of .lef file
- Generate  .lef file using Virtuoso and Abstract Generator tools
- Post-processing .lef file


## LEF file generation 
- virtuoso - Technological part
- Abstract - Cell descriptive part 

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
