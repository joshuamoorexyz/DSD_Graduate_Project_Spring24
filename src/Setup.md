## <u>ISE Setup</u>

A useful guide: [Link]([Installing Xilinx ISE (Windows 10) (ucla.edu)](https://web.cs.ucla.edu/~weightzero/files/xilinx_installation/InstallXilinxISE_VirtualBox.pdf))

1. The installation uses virtualbox to install into.
   
   First install virtualbox on your windows 11 pc.

2. Install ISE for windows 11 [[Link]([Downloads](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive-ise.html))] 
   
   The B210 USRP uses ISE

3. Windows 11 bios fixAfter this i had a problem where although i had virtualization enabled in my bios the program would not continue so i simply disabled the check for the virtualization by going to /bin/validate_virtualization and commented the line like so
   
   ![](C:\Users\fiveG\OneDrive\Pictures\Screenshots\Screenshot%202024-03-06%20115358.png)
   
   After this simply install the ISE program onto the computer.
   
   ![](C:\Users\fiveG\AppData\Roaming\marktext\images\2024-03-18-11-20-12-image.png)

4. Install build dependencies 
   
   Boot into the virtual machine platform and install the build dependencies Since my VM is rhel i will use the dnf commands as such:

![](C:\Users\fiveG\AppData\Roaming\marktext\images\2024-03-18-12-09-22-image.png)

## <u>Development Environment Setup</u>

   Clone this repo containing all the necessary files

https://github.com/EttusResearch/fpga
