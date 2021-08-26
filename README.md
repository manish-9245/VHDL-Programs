# VHDL-Programs
### Why I made this repository?
VHDL is not a very popular language with a huge user base, hence there is very little to no content regarding this language.

I struggled to get familiar to this language due to lack of proper content online, so feel free to use this repository to learn how to code different circuits/designs in VHDL.
### How to run these files/projects?
- You firstly need to have Xillinx ISE Design Suit installled on your system.
- After opening the software click on File -> New Project
- Enter name of project and then select the configuration as
    - Device Family: Spartan3
    - Device:        xc3s50
    - Package:       pq208
    - Speed:         -4
    - Top-Level Source Type: HDL
    - Synthesis Tool: XST (VHDL/Verilog)
    - Simulator: ISim (VHDL/Verilog)
    - Preferred Language: VHDL
    - Property Specification in Project File: Store all values
    - Manual Compile Order: false
    - VHDL Source Analysis Standard: VHDL-93
- Now click on Add Source and select the downloaded files.
- Import these Files
- Click on Simulation Radio Button
- Left click on the testbench file and click on the Simulate behavioral model under the ISim Simulation drop down.
- You have your required waveform output.
- In order to see the circuit diagram click on Implementation radio button and click on RTL Schematic Option and double click on the entity diagram shown.
