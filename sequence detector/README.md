# Sequence Detector (1101) using Verilog HDL

## Project Overview

This project implements a Sequence Detector using Verilog HDL. The detector identifies the binary sequence **1101** from a serial input stream and generates an output whenever the sequence is detected.

The design is implemented as a Finite State Machine (FSM) using the Mealy machine model.

---

## Features

- Detects sequence **1101**
- Supports overlapping sequence detection
- Implemented using Verilog HDL
- Includes complete Testbench
- Simulation waveform included
- Easy to simulate using Icarus Verilog, GTKWave, or Vivado

---

## Project Files

| File | Description |
|------|-------------|
| sequence_detector.v | Verilog design |
| sequence_detector_tb.v | Testbench |
| waveform.vcd | Simulation waveform |
| waveform.png | Waveform screenshot |
| README.md | Project documentation |

---

## State Diagram

States:

S0 → Initial State

S1 → 1

S2 → 11

S3 → 110

Sequence Detected → 1101

---

## Software Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Xilinx Vivado (Optional)

---

## Simulation

Compile

```bash
iverilog -o detector sequence_detector.v sequence_detector_tb.v
```

Run

```bash
vvp detector
```

View Waveform

```bash
gtkwave waveform.vcd
```

---

## Expected Output

Input Stream

1101101

Output

0001001

The output becomes HIGH whenever **1101** is detected.

---

## Author

Your Name