# RAM-DESIGN
COMPANY: CODTECH IT SOLUTIONS

NAME: ANANGI MANI VIVEK

INTERN ID: CTIS8564

DOMAIN: VLSI

DURATION: 6 WEEKS

MENTOR: NEELA SANTOSH

DESCRIPTION:

Introduction
Random Access Memory (RAM) is one of the most essential components in digital systems and computer architecture. It is used for temporary storage of data that can be accessed quickly by processors and other digital circuits. RAM allows both read and write operations, making it a fundamental building block in embedded systems, microprocessors, and FPGA-based designs. In synchronous RAM, all memory operations are controlled by a clock signal, ensuring that data transfer occurs in a synchronized and predictable manner. This project focuses on the design and simulation of a simple synchronous RAM module using VHDL and its verification through simulation in the Vivado design environment.

Objective
The main objective of this project is to design a simple synchronous RAM module capable of performing read and write operations. The design is implemented using VHDL and verified using a testbench. The project aims to demonstrate the basic concepts of memory design, clock synchronization, data storage, and data retrieval in digital systems.

Tools Used
The following tools and technologies were used for the implementation of this project:

AMD Vivado 2024.1 Design Suite
VHDL (VHSIC Hardware Description Language)
XSim Simulator for functional verification
Windows Operating System
Design Description and Working Principle
The synchronous RAM module consists of 16 memory locations, with each location capable of storing 8-bit data. The design includes a clock signal (clk), write enable signal (we), address bus (addr), data input (din), and data output (dout). The write enable signal determines whether the RAM performs a write operation or a read operation.

During the write operation, when the write enable signal is set to logic high ('1'), the input data is stored in the memory location specified by the address bus on the rising edge of the clock signal. During the read operation, when the write enable signal is set to logic low ('0'), the data stored at the selected address is retrieved and displayed at the output. Since all operations occur on the rising edge of the clock, the design is classified as synchronous RAM.

To verify the functionality of the RAM, a testbench was developed. The testbench generates clock pulses and applies different combinations of addresses and data values. During simulation, the values 55, AA, and FF were written to memory locations 1, 2, and 3 respectively. These values were then successfully read back from the same locations, confirming the correct operation of the RAM module.

Applications
Synchronous RAM is widely used in various digital and embedded systems. Some common applications include:

FPGA and ASIC-based memory systems
Microprocessor and microcontroller applications
Data buffering and temporary storage
Digital Signal Processing (DSP) systems
Communication and networking devices
Cache memory implementation
Embedded control systems
Advantages
Simple and efficient memory architecture
Reliable operation due to clock synchronization
Easy implementation using VHDL
Suitable for FPGA-based applications
Fast data access and storage capability
Easy verification through simulation
Conclusion
The Simple Synchronous RAM module was successfully designed and simulated using VHDL in the AMD Vivado environment. The implementation demonstrated accurate read and write operations controlled by a clock signal. Simulation results confirmed that data was correctly stored and retrieved from the memory locations, validating the functionality of the design. This project provided practical knowledge of memory design and hardware description languages while highlighting the importance of synchronous memory systems in modern digital electronics and FPGA-based applications.

Output


<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a3cb1af8-4877-4335-a862-31f3378355db" />
