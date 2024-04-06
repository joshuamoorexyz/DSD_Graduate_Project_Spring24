
# Overview of project

## Opening the b210 project in ISE

The Ettus b210 USRP project can be open in ISE by navigating to the following directory. Note that your path may be different as i created my Shared directory between my host OS and VM and called it ISESharedDIR and that is where i cloned down the fpga folder from ETTUS. I believe this to be a good workflow due to the portability of the built image and ease of development.

```bash /home/ise/ISESharedDIR/fpga/usrp3/top/b200/build-B210/b200.xise```

The .xise extension means this is a project which can be interpreted by the ise software. 

## Main files in project folder with description

b200.bgn: Timing constraint file.
b200.bin: Binary file, possibly the output bitstream for programming the FPGA.
b200.bit: Bitstream file, used to configure the FPGA.
b200_bitgen.xwbt: Bitgen project file.
b200.bld: Build file.
b200.cmd_log: Command log file.
b200.drc: Design rule check report file.
b200_envsettings.html: Environment settings file in HTML format.
b200.gise: Global ISE project settings file.
b200_guide.ncd: Guide file.
b200.lso: LSO (Logical Synthesis Option) file.
b200_map.map: Map report file.
b200_map.mrp: Map report file in text format.
b200_map.ncd: Map result file.
b200_map.ngm: Map report file in HTML format.
b200_map.xrpt: Map report file in XML format.
b200.ncd: NCD (Native Circuit Description) file.
b200.ngc: NGC (Native Generic Circuit) file.
b200.ngd: NGD (Native Generic Database) file.
b200.ngo: NGC Output file.
b200.pad: Pad report file.
b200.pcf: Physical constraint file.
b200.par: PAR (Place and Route) report file.
b200_par.xrpt: PAR report file in XML format.
b200.pad.csv: CSV file containing pad information.
b200_pad.txt: Text file containing pad information.
b200.prj: Project file.
b200.ptwx: Physical synthesis project file.
b200.stx: Statistics report file.
b200.syr: Symbolic report file.
b200_summary.html: Summary report file in HTML format.
b200_summary.xml: Summary report file in XML format.
b200.twr: Timing analysis report file.
b200.twx: Timing analysis project file.
b200.unroutes: Unrouted nets report file.
b200_usage.xml: Usage statistics file in XML format.
b200.ut: Usage statistics file.
b200.xise: ISE project file.
b200.xpi: Xilinx Pin Information file.
b200.xst: XST (Xilinx Synthesis Technology) project file.
b200_xst.xrpt: XST report file in XML format.
build.log: Build log file.
iseconfig: Configuration file for ISE.
webtalk.log: Log file for web communication.
webtalk_pn.xml: Web communication log file in XML format.
xlnx_auto_0_xdb: Xilinx Auto-generated database file.
xst: Xilinx Synthesis Tool executable file.
_xmsgs: Messages directory containing synthesis messages.



## Main Source Files with description 

Although there are many source files in the project the following represent the most important

b200.v: The top-level Verilog file defining the overall structure and functionality of the FPGA design.

b200_io.v: Responsible for handling input and output interfaces, including logic for interfacing with external devices or components.

b200_core.v: Contains the core functionality of the FPGA design, likely implementing key processing algorithms or logic.

b200_clk_gen.v: Generates clock signals necessary for synchronizing different parts of the design, ensuring proper operation.

reset_sync.v: Manages the reset mechanism for the FPGA design, initializing the system into a known state during startup or after certain events.

user_settings.v: Holds user-configurable settings or parameters, providing flexibility for users to customize behavior.

simple_uart.v: Implements a UART communication interface, crucial for serial communication with external devices.

simple_uart_tx.v and simple_uart_rx.v: Components of the UART interface, handling transmit and receive functionality, respectively.

axi_fifo.v: Implements a FIFO buffer using the AXI protocol, necessary for buffering data between components operating at different speeds.
