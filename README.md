# Cadence Virtuoso 6T SRAM Design and Verification

This repository contains the complete custom IC design flow for a 6-Transistor (6T) SRAM architecture, designed in Cadence Virtuoso. This documentation covers the full design cycle, from transistor-level schematic capture to physical layout and post-layout verification.

## Project Hierarchy

### 1. Schematic Design & Symbols
The core 6T SRAM cell is supported by peripheral circuitry, including precharge logic, sense amplifiers, and row decoders.

*   **Core 6T SRAM:** ![Schematic](assets/04_core_6t_sram_schematic.png) | ![Symbol](assets/08_sram_6t_symbol.png)
*   **Sense Amplifier:** ![Schematic](assets/01_sense_amp_schematic.png) | ![Symbol](assets/11_sense_amp_symbol.png)
*   **Precharge Circuit:** ![Schematic](assets/02_precharge_schematic.png) | ![Symbol](assets/10_precharge_symbol.png)
*   **Row Decoder:** ![Schematic](assets/03_decoder_slice_schematic.png) | ![Symbol](assets/09_decoder_slice_symbol.png)

### 2. Array Integration
The components are integrated into an 8-bit column and finally an 8x8 array.

*   **8-Bit Column:** ![Schematic](assets/05_sram_8bit_column_schematic.png) | ![Symbol](assets/12_sram_8bit_column_symbol.png)
*   **8x8 Array:** ![Schematic](assets/06_sram_8x8_array_schematic.png) | ![Symbol](assets/13_sram_8x8_array_symbol.png)
*   **System Testbench:** ![Schematic](assets/07_sram_system_testbench.png)

## Verification & Analysis

### Transient Analysis
Transient simulation verifies the read/write functionality of the system over time.
![Transient Response](assets/22_system_transient_response.png)

### Layout & Physical Verification
The 6T cell was laid out with attention to area and parasitic mitigation. Verification included DRC and LVS checks using Cadence PVS.
*   **Layout:** ![Full](assets/17_sram_cell_layout_wide.png) | ![Detail](assets/18_sram_cell_layout_zoom.png)
*   **DRC:** ![Density Checks](assets/16_drc_density_checks.png)
*   **LVS:** ![Status](assets/14_lvs_run_status.png) | ![Summary](assets/15_lvs_match_summary.png)

### Parasitic Extraction (PEX)
RC parasitics were extracted using Quantus QRC for accurate post-layout simulation.
*   **Setup:** ![Extraction Setup](assets/20_quantus_extraction_setup.png)
*   **Run Details:** ![Details](assets/19_quantus_run_details.png)
*   **Success:** ![Result](assets/21_quantus_success.png)

---

## Technical Stack
*   **Schematic/Symbol:** Cadence Virtuoso Schematic Editor
*   **Simulation:** ADE L / Virtuoso Visualization & Analysis XL
*   **Physical Design:** Virtuoso Layout Suite
*   **Verification:** Cadence PVS (DRC/LVS)
*   **Extraction:** Quantus QRC
