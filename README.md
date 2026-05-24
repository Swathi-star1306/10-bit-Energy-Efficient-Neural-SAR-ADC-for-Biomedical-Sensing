# 10-bit Energy-Efficient Neural SAR ADC for Biomedical Sensing



# Complete RTL-to-GDSII Physical Design Flow  
## using Cadence Genus & Innovus

# Project Overview

This project presents the complete physical implementation of a **10-bit Energy-Efficient Pseudo-Differential SAR ADC** optimized for biomedical neural sensing applications.

The project demonstrates a complete:

# RTL → Synthesis → Floorplan → CTS → Routing → RC Extraction → Timing Closure → GDSII

backend implementation flow using Cadence EDA tools.

The design focuses on:
- Low-power neural sensing
- Energy-efficient conversion
- Compact backend implementation
- Timing optimization
- Power optimization
- Physical design flow

---

# Problem Statement

Biomedical neural sensing systems require:
- ultra-low power operation
- compact silicon area
- stable timing behavior
- high signal reliability
- energy-efficient conversion architecture

This project implements a pseudo-differential SAR ADC architecture suitable for:
- wearable biomedical devices
- neural acquisition systems
- implantable healthcare electronics
- low-power edge sensing applications

---

# Design Features

## Key Features

- 10-bit SAR ADC architecture
- Pseudo-differential input structure
- Neural spike detection support
- Low-power sequential architecture
- Optimized backend physical design
- DRC-clean routed layout
- RC extraction completed
- Timing closure achieved
- GDSII generation completed

---

# Architecture

The design contains:
- SAR control logic
- comparator decision logic
- capacitive DAC digital control
- spike detection logic
- conversion FSM
- digital output registers
- pseudo-differential sensing interface

---

# Technology Details

| Parameter | Value |
|---|---|
| Technology Node | 90nm CMOS |
| Supply Voltage | 0.9V |
| Clock Frequency | 50MHz |
| EDA Flow | RTL → GDSII |
| Tools Used | Cadence Genus & Innovus |
| Language | Verilog HDL |

---

# Complete Backend Flow

## RTL Design

The SAR ADC architecture was implemented in Verilog HDL.

### Functional Blocks
- Successive approximation logic
- Comparator emulation
- Differential input processing
- Neural spike detection
- Output conversion registers
- FSM-based conversion controller

---

## Functional Simulation

Simulation performed using:
- NCLaunch
- Xrun
- SimVision

### Verification Included

✅ Reset verification  
✅ Differential input testing  
✅ Spike detection verification  
✅ SAR conversion testing  
✅ Output register verification  

---

# Simulation Waveform

<img width="1259" height="785" alt="Screenshot 2026-05-23 074606" src="https://github.com/user-attachments/assets/0781eade-5e54-46bd-849a-ddbb959efd17" />

---

## Synthesis using Cadence Genus

### Synthesis Flow

```tcl
read_libs slow.lib

read_hdl neural_sar_adc_top.v

elaborate neural_sar_adc_top

read_sdc constraints.sdc

syn_gen
syn_map
syn_opt
```

---

# Synthesis Results

| Metric | Result |
|---|---|
| Cell Count | 241 |
| Synthesized Area | 2154.137 µm² |
| Timing Status | MET |
| Setup Slack | +15.186 ns |


<img width="1518" height="851" alt="Screenshot 2026-05-23 101937" src="https://github.com/user-attachments/assets/03bcc108-e75b-4b06-bf35-24d8ce54e526" />

---

# Timing Analysis

## Pre-Route Timing

### Setup Timing

✅ Timing Met Successfully

### Slack

```text
Slack = +15.186 ns
```

---

# Floorplanning

## Physical Design Stages

- Core utilization setup
- Standard cell row generation
- Power planning
- Placement preparation
- Routing preparation

---

# Power Planning

## Implemented

✅ VDD/VSS core rings  
✅ Metal8 vertical routing  
✅ Metal9 horizontal routing  
✅ Follow-pin routing  
✅ Global power connectivity  

---

# Clock Tree Synthesis (CTS)

## CTS Objectives

- Reduce clock skew
- Improve timing closure
- Minimize clock latency
- Reduce clock power

---

# CTS Screenshot

<img width="1085" height="639" alt="Screenshot 2026-05-23 080442" src="https://github.com/user-attachments/assets/d6e422ad-0279-4f53-8cc4-164032b4d308" />

---

# Routing

## Routing Completed Successfully

### Routing Stages

✅ Global Routing  
✅ Detailed Routing  
✅ RC Extraction  
✅ Congestion optimization  
✅ Multi-layer routing  

---

# 📸 Routed Layout

<img width="1919" height="1022" alt="Screenshot 2026-05-23 080316" src="https://github.com/user-attachments/assets/fc04456f-725b-402c-b702-3d860364a20b" />


---

# DRC Verification

## Final DRC Status

```text
0 DRC Violations
```

Verification completed:
- routing verification
- DRC verification
- connectivity verification
- GDS streamout

---

# GDSII Generation

Final layout exported successfully:

```text
neural_sar_adc_top.gds
```

---

# Post-Route Timing Analysis

| Metric | Result |
|---|---|
| Setup Slack | +14.953 ns |
| Timing Status | MET |
| Clock Period | 20 ns |
| Arrival Time | 4.970 ns |

---

# Post-Route Power Analysis

| Parameter | Value |
|---|---|
| Total Power | 82.22 µW |
| Internal Power | 59.07 µW |
| Switching Power | 11.68 µW |
| Leakage Power | 11.47 µW |

---

# Power Distribution

| Block | Percentage |
|---|---|
| Sequential Logic | 68.87% |
| Combinational Logic | 30.9% |
| Clock Network | 0.22% |

---

# Optimizations Performed

## ✅ Timing Optimizations

- Post-route optimization
- OCV timing analysis enabled
- CPPR enabled
- SI-aware timing optimization
- Slack optimization

---

## ✅ Power Optimizations

- Reduced clock power
- Efficient sequential architecture
- Reduced switching activity
- Compact logic implementation
- Optimized routing layers

---

## ✅ Physical Design Optimizations

- Congestion-aware placement
- RC extraction
- CTS buffer optimization
- Routing optimization

---

# Final Design Quality

| Parameter | Status |
|---|---|
| RTL Simulation | ✅ PASS |
| Synthesis | ✅ PASS |
| Placement | ✅ PASS |
| CTS | ✅ PASS |
| Routing | ✅ PASS |
| RC Extraction | ✅ PASS |
| DRC | ✅ CLEAN |
| Timing Closure | ✅ MET |
| GDSII Generation | ✅ SUCCESS |

---

# Remaining Improvements

Future enhancements can include:
- IO padframe integration
- IR-drop analysis
- Antenna fixing
- LVS verification
- Multi-voltage domains
- Clock gating
- Power gating
- 28nm technology migration

---

# Tools Used

| Tool | Purpose |
|---|---|
| Cadence Genus | Synthesis |
| Cadence Innovus | Physical Design |
| NCLaunch/Xrun | Simulation |
| SimVision | Waveform Analysis |
| Verilog HDL | RTL Design |

---

# Applications

- Biomedical neural sensing
- Implantable healthcare systems
- Wearable medical electronics
- Low-power edge sensing
- Neural acquisition systems

---

# Key Learning Outcomes

Through this project, the following concepts were learned:

- RTL-to-GDSII implementation
- Timing closure
- Clock tree synthesis
- RC extraction
- Low-power backend implementation
- DRC verification
- Physical routing optimization
- Cadence backend flow

---

# Final Achievement

✅ Successfully completed complete RTL-to-GDSII backend implementation of a low-power Neural SAR ADC using Cadence Genus and Innovus.

✅ Achieved:
- timing closure
- DRC-clean routed layout
- RC extraction
- post-route optimization
- power analysis
- GDSII generation

---



