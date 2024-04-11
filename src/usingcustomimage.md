# Using a custom Image


1.  Compile Custom FPGA Image

    Customize the FPGA source code according to your requirements. Use Xilinx
    ISE to compile the modified FPGA source code into a .bit file.

2.  Load Custom Image onto the Ettus B210 Connect Ettus B210:

    Connect the Ettus B210 device to your development computer using a USB
    cable.

    - Install UHD Software:

    Ensure that the UHD (USRP Hardware Driver) software is installed on your
    development computer. This software package includes tools for loading FPGA
    images onto USRP devices.

    - Identify Device Address:

    Determine the device address of your Ettus B210. This address will be used
    to communicate with the device. This can be obtained by running
    UHD_find_devices on your linux computer where you have installed UHD.

    - Load FPGA Image:

    Use the uhd_image_loader tool provided by the UHD software package to load
    the custom FPGA image onto the Ettus B210. Run the command with appropriate
    arguments, specifying the type of device (b210), and the address of the
    device. bash uhd_image_loader --args="type=b210,addr=192.168.10.2"
    custom_image.bit Replace custom_image.bit with the path to your custom FPGA
    image file.

3.  Verify Operation Reset Device:

    Power cycle or reset the Ettus B210 device to apply the changes and load the
    custom FPGA image.

    - Test Functionality:

    Verify that the device operates as expected with the custom FPGA image loaded.
    Perform tests and validation to ensure that the device functions correctly and
    meets your application requirements.

4.  Troubleshooting and Optimization Error Checking:

    If the device does not operate as expected, check for any error messages or logs
    provided by the UHD software. Verify that the custom FPGA image was loaded
    successfully onto the device. Refinement Iteration:

    Refine and iterate on your custom FPGA image as needed to optimize performance
    or add additional functionality. Repeat the process of compiling, loading, and
    verifying the custom FPGA image until you achieve the desired results. Notes:
    Always ensure that you have a backup of the original FPGA image provided by
    Ettus Research before loading a custom image onto the device. Be cautious when
    flashing custom images onto USRP devices, as improper flashing can potentially
    damage the device.
