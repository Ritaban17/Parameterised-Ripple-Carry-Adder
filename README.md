# Parameterized Ripple Carry Adder (RCA)

A foundational digital hardware design project demonstrating a parameterized Ripple Carry Adder implemented in Hardware Description Language (HDL). This design is highly scalable, allowing the instantiation of an $N$-bit adder by modifying a single parameter without rewriting the core structural logic.

## 📌 Overview

A Ripple Carry Adder (RCA) is a logic circuit used to add two $N$-bit binary numbers. It is constructed by cascading multiple 1-bit Full Adders in series. 

While structurally simple and highly efficient in terms of silicon area, the RCA suffers from a linear propagation delay, $O(N)$. The sum and carry-out of each stage cannot be finalized until the carry-in from the previous stage has successfully "rippled" through the circuit. 

### Key Features

* **Parameterized Width:** Scalable design (e.g., 4-bit, 8-bit, 16-bit, 32-bit, or any arbitrary $N$-bit width) using HDL parameters and generate blocks.
* **Structural/Behavioral Implementation:** Clean code demonstrating how to link basic combinational logic blocks sequentially.
* **Low Area Overhead:** Demonstrates the most space-efficient method for binary addition.
* **Verification Testbench:** Includes simulation files to verify correct addition and carry-out logic across different configurations.

## 🛠️ Prerequisites

To simulate this design and view the resulting waveforms, you will need an HDL simulator. Standard tools include:

* [Icarus Verilog (iverilog)](https://steveicarus.github.io/iverilog/) + [GTKWave](http://gtkwave.sourceforge.net/) (Free/Open Source)
* ModelSim / QuestaSim
* Xilinx Vivado

## 🚀 Getting Started

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Ritaban17/Ripple-Carry-Adder--Parameretised-.git
   cd Ripple-Carry-Adder--Parameretised-
   ```

2. **Compile the design and testbench (Example using Icarus Verilog):**

   ```bash
   iverilog -o rca_sim src/rca.v tb/rca_tb.v
   ```
   *(Note: Adjust the file paths to match the exact names used in your repository).*

3. **Run the simulation:**

   ```bash
   vvp rca_sim
   ```

4. **View the Waveforms:**

   ```bash
   gtkwave dump.vcd
   ```

## 📁 Repository Structure

```text
├── src/                # Source HDL files (e.g., full_adder.v, rca_parameterized.v)
├── tb/                 # Testbench files for verifying functionality
├── docs/               # (Optional) Circuit diagrams or waveform screenshots
└── README.md           # Project documentation
```

## 🧠 Theory of Operation

The RCA relies on a 1-bit Full Adder as its fundamental building block. For inputs $A_i$, $B_i$, and $C_i$ (Carry-in), the Full Adder computes:

* **Sum (**$S_i$**):** 
  $$ S_i = A_i \oplus B_i \oplus C_i $$

* **Carry-out (**$C_{i+1}$**):** 
  $$ C_{i+1} = (A_i \cdot B_i) + C_i \cdot (A_i \oplus B_i) $$

To create an $N$-bit parameterized RCA, $N$ Full Adders are linked together. The $C_{i+1}$ of the first adder connects directly to the $C_i$ of the next. The overall delay of the circuit is directly proportional to $N$, making it slower than more advanced architectures like the Carry Look-Ahead Adder, but requiring significantly fewer logic gates.

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Check the [issues page](https://github.com/Ritaban17/Ripple-Carry-Adder--Parameretised-/issues) to get involved.

## 👤 Author

* **Ritaban Pal**  
* B.Tech Electrical Engineering | VLSI & RTL Design Enthusiast

---

## 📄 License

This project is open-source and available under the MIT License.
