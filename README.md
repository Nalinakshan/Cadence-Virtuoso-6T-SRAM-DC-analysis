# 6T SRAM Cell DC Analysis & Characterization

This repository contains the design, simulation, and DC analysis of a standard **6-Transistor (6T) SRAM cell** implemented using Cadence Virtuoso. The primary focus of this project is to characterize the cell's stability by analyzing its Voltage Transfer Characteristics (VTC).

## Project Overview
Static Random-Access Memory (SRAM) is a critical component in modern microprocessor design. A standard 6T SRAM cell relies on two cross-coupled inverters to store a single bit of data, with two access transistors controlling read and write operations. Evaluating the DC performance and Static Noise Margin (SNM) is crucial to ensuring cell stability against noise during hold and read states.

## Design Parameters & Schematic
* **Technology Node:** 45nm CMOS Process (`g45n1svt`)
* **Supply Voltage ($V_{DD}$):** 1.8V
* **Cell Architecture:** * **Pull-Up PMOS (PM0, PM1):** $W = 120\,\text{nm}, L = 45\,\text{nm}$
  * **Pull-Down NMOS (NM0, NM1):** $W = 120\,\text{nm}, L = 45\,\text{nm}$
  * **Access NMOS (NM2, NM3):** $W = 120\,\text{nm}, L = 45\,\text{nm}$

### Schematic Capture
The schematic was captured using Cadence Virtuoso Schematic Editor. An independent DC voltage source ($V_4$) was tied to the internal node `Qb` to perform a precise voltage sweep for stability characterization.

![SRAM Schematic](path_to_your_schematic_image.png)

## Simulation Methodology
The simulation was configured and executed using **Cadence Analog Design Environment L (ADE L)**:
1. **Analysis Type:** DC Sweep
2. **Sweep Variable:** Voltage source `/V4` (connected to node `Qb`)
3. **Sweep Range:** 0V to 1.8V (Linear)
4. **Monitored Outputs:** Internal storage nodes `Q` and `Qb`

![ADE L Setup](path_to_your_adel_image.png)

## Results & Discussion
The simulation results were plotted using **Virtuoso Visualization & Analysis XL**:
* **Node Q Response (Cyan Curve):** Demonstrates a sharp inverter switching threshold (trip point) near ~0.85V when sweeping node `Qb`.
* **Node Qb Response (Red Curve):** Represents the cross-coupled feedback mechanism. 
* **Linear Sweep Reference (Green Curve):** Tracks the independent input variable `/Qb`.

The overlapping Voltage Transfer Characteristics (VTC) map out the foundational layout required to measure the **Static Noise Margin (SNM)** via the classic "butterfly curve" method. 

![DC Analysis Plot](path_to_your_plot_image.png)

## Tools Used
* **Cadence Virtuoso Schematic Editor**
* **Cadence ADE L** (Spectre Simulator)
* **Virtuoso Visualization & Analysis XL**
