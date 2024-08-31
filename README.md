# Up/Down Counter Design with Verilog

## Overview
This project involves designing and implementing a versatile up/down counter using Verilog HDL. The counter supports counting both upwards and downwards based on control signals, with additional features like enable, reset, and load functionalities.

## Features
- **Up/Down Counting**: The counter can count both up and down depending on the `up_down` control signal.
- **Enable Function**: Allows the counter to operate only when enabled.
- **Reset Function**: Resets the counter to zero when activated.
- **Load Function**: Loads a specific value into the counter when required.

## Files
- `up_down_counter.v`: Verilog module for the up/down counter design.
- `up_down_counter_tb.v`: Testbench file to simulate and validate the functionality of the counter module.

## How to Use

### Simulation with ModelSim
1. **Open ModelSim** and create a new project.
2. **Add** `up_down_counter.v` and `up_down_counter_tb.v` to your project.
3. **Compile** both the Verilog module and testbench.
4. **Run Simulation** to observe the counter's behavior with different input signals.

### Synthesis with Quartus Prime
1. **Open Quartus Prime** and create a new project.
2. **Add** `up_down_counter.v` as the top-level module.
3. **Assign Pins** for inputs and outputs:
   - `clk` for the clock input.
   - `reset`, `enable`, `up_down`, `load`, and `load_val` for control signals.
   - `count` for the counter output.
4. **Compile** the design and simulate using ModelSim-Altera within Quartus Prime.

## Key Skills Demonstrated
- Verilog HDL
- Digital Design
- Sequential Logic
- Simulation and Synthesis



