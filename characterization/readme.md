# Characterization of standard cells using Cadence Liberate:

## **1. Prepare the Netlist:**

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

  

## **2. Extract and Modify Individual Cell Netlists:**

- Use the provided `fixed.pl` Perl script to extract individual cell netlists from the combined .scs file:
  ```bash
  fixed.pl < SCL.scs
  ```
- Copy the list of extracted cell names.

## **3. Edit Template File:**

- Edit the `templates/template.tcl` file:
  - Paste the copied cell names into the `cells_list` variable.
  - Adjust settings like `max_transition` and `voltage_list` as needed.
  - Modify the `create_lib_cell` commands to match your cell names and pins.

## **4. Prepare Cell Area Data:**

- In the `areas.txt` file, list each cell's name and area (measured from layout).
- Use the provided Perl script to generate user data files:
  ```bash
  perl areas_to_user_data.pl < areas.txt
  ```

## **5. Verify and Run Characterization Script:**

- Check the `char.tcl` file for accuracy in file paths, voltages, temperatures, process corners, and references to the template and cell list.
- Set up the Liberate environment (source the appropriate setup script).
- Run the characterization script:
  ```bash
  liberate -f char.tcl
  ```

## **6. Review Results:**

- Liberate will create a characterized library (.ccs and .ccsm files) and a datasheet.
- Verify the accuracy of the characterization results.


