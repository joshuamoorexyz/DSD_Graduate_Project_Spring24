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

  This serves as the overview of the ISE project for the b210 giving a description of the relevant source files contained in the project and their role in the project. From this overview source files are linked which contain comments regarding the code itself to enhance understanding.


