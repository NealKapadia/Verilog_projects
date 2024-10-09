# Verilog Adder and D Flip-Flop Project

This project contains Verilog implementations of a 4-bit adder, a D flip-flop (DFF), and a full adder. Each module has its corresponding testbench file for verification purposes.

## Modules

### 1. Four-Bit Adder (`four_bit_adder.v`)

The four-bit adder module (`fourbitadder`) adds two 4-bit numbers with a carry-in and produces a 4-bit sum with a carry-out.

- Inputs: `a3`, `b3`, `a2`, `b2`, `a1`, `b1`, `a0`, `b0`, `cin`
- Outputs: `s1`, `s2`, `s3`, `s4`, `c4`

This module is implemented using four full adders connected in series.

### 2. D Flip-Flop (`DFF.v`)

The D flip-flop module (`DFF`) is a basic storage element that captures the value of the D input on the rising edge of the clock signal.

- Inputs: `D`, `S` (Set), `R` (Reset), `clk` (Clock)
- Outputs: `Q`, `Qb` (Complement of Q)

This DFF implementation includes Set and Reset functionality.

### 3. Full Adder (`full_adder.v`)

The full adder module (`full`) adds three 1-bit inputs and produces a sum and carry-out.

- Inputs: `a`, `b`, `ci` (Carry-in)
- Outputs: `s` (Sum), `co` (Carry-out)

## Testbenches

Each module has a corresponding testbench file for verification:

1. `four_bit_adder_tb.v`: Testbench for the four-bit adder
2. `DFF_tb.v`: Testbench for the D flip-flop
3. `full_adder_tb.v`: Testbench for the full adder

These testbench files are used to simulate and verify the functionality of their respective modules.

## Usage

To simulate and test these modules:

1. Ensure you have Icarus Verilog (iverilog) installed on your system.
2. Compile the module and its testbench:
   ```
   iverilog -o module_tb module.v module_tb.v
   ```
3. Run the simulation:
   ```
   vvp module_tb
   ```
4. View the results in a waveform viewer like GTKWave (if waveform dumps are included in the testbenches).

Replace `module` with the name of the specific module you're testing (e.g., `four_bit_adder`, `DFF`, or `full_adder`).

## Note

This README provides a basic overview of the project structure and modules. For detailed information on each module's functionality and implementation, please refer to the comments within the individual Verilog files.