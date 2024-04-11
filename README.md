# DSD Graduate Project Spring 2024

A repository containing code and documentation relevant to my graduate project in Digital System Design Spring 2024. 

## Project Objective

This project details the process of establishing a development environment tailored for modifying the image of the Ettus Research USRP B210. It aims to provide digital system designers with a comprehensive understanding of setting up this environment and navigating the device's source code ultimately guiding the process of modification for research purposes.

This project employs literate programming leveraging the CodeChat editor which is open source and can be found here: [link](https://github.com/bjones1/CodeChat_Editor.git)


### Description of items in TOC

- [Ettus B210 USRP architecture and design](src/b210.md)
  
  This document serves as a technical reference for the Ettus Research USRP B200/B210 device and its development environment. It includes links to essential documents such as the datasheet, hardware schematic, and a guide for image modification. Additionally, it highlights key features of the device, its high-level architecture, and provides visuals for understanding its internal structure and resource utilization.

- [Setup Instructions](src/Setup.md)
  
  This document outlines the setup process for Xilinx ISE on a Windows 11 PC using VirtualBox. It includes steps for installing VirtualBox, downloading and installing Xilinx ISE for Windows 11, and resolving BIOS-related issues encountered during installation. Additionally, it provides instructions for installing build dependencies and setting up the development environment for FPGA modification, including cloning the necessary repository.

- [Overview of Project](src/overview.md)

  This serves to give an understanding of the files relevant for the b210 USRP from Ettus with a description of each.

### Main Source Files

[b200.v](fpga/usrp3/top/b200/b200.v) - The main Verilog file for the B200 series USRP. This file encompasses the top-level design which integrates various modules like IO and core functionalities.

[b200_io.v](fpga/usrp3/top/b200/b200_io.v) - Handles the input/output operations for the B200. It is crucial for interfacing with the hardware peripherals.

[b200_core.v](fpga/usrp3/top/b200/b200_core.v) - This core file includes the essential processing and control logic necessary for the operation of the USRP.

[b200_clk_gen.v](fpga/usrp3/top/b200/coregen/b200_clk_gen.v) - A clock generation module for the B200. It ensures that all parts of the system receive the correct clock signals for synchronous operation.

[reset_sync.v](fpga/usrp3/lib/control/reset_sync.v) - Provides reset synchronization across various modules to ensure safe and predictable initialization and reset processes.

### Background Information
[Background Info](src/backgroundinfo.md) - Offers foundational knowledge necessary for understanding the modifications on the FPGA image.

[UHD](src/UHD.md) - Discusses the Universal Hardware Driver (UHD) that interfaces with all USRP products. Understanding UHD is crucial for effectively programming and controlling the USRP.

[Use Case: Custom Filtering](src/customfiltering.md) - Illustrates a specific application of custom FPGA modifications, highlighting the process and benefits of implementing custom filters directly on the FPGA.

### Loading a Custom Image onto the USRP
[Instructions](src/usingcustomimage.md) - Detailed step-by-step guide for loading a custom FPGA image onto the USRP, enabling users to implement and test their modifications.


### Sources
[Cited Works](src/workscited.md) - A comprehensive list of all the resources, papers, and documentation referenced or used throughout the project. Ensure this document is well-organized to facilitate easy access to cited works.




