/*
Module Definition: The module is named b200_clk_gen and contains input and output ports for clock signals as well as status and control signals.

Clocking Configuration:

The module instantiates a Clocking Management (DCM_SP) primitive to generate clock signals.
It receives an input clock (CLK_IN1_40_P and CLK_IN1_40_N) and generates three output clocks: CLK_OUT1_40_int, CLK_OUT2_100_gpif, and CLK_OUT3_100_bus.
Input Buffering:

The input clock is buffered using an IBUFGDS primitive (clkin1_buf) to handle differential signaling.
Clocking Primitive:

The DCM_SP primitive is instantiated to generate output clocks with specific characteristics such as phase shift and frequency multiplication.
The locked status of the DCM_SP is captured and provided as the LOCKED output.
Output Buffering:

The generated clock signals are buffered using BUFG primitives (clkout1_buf, clkout2_buf, clkout3_buf).
Control and Status Signals:

The RESET input is used to reset the clocking primitive.
The LOCKED output indicates whether the DCM_SP is locked and stable.
The status_int output provides additional status information about the clocking primitive.
Overall, this module serves to generate multiple clock signals with specific characteristics for use within the B200 system.
*/ 
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
// "Output    Output      Phase     Duty      Pk-to-Pk        Phase"
// "Clock    Freq (MHz) (degrees) Cycle (%) Jitter (ps)  Error (ps)"
//----------------------------------------------------------------------------
// CLK_OUT1____40.000______0.000______50.0______200.000____150.000
// CLK_OUT2___100.000______0.000______50.0______400.000____150.000
// CLK_OUT3___100.000______0.000______50.0______400.000____150.000
//
//----------------------------------------------------------------------------
// "Input Clock   Freq (MHz)    Input Jitter (UI)"
//----------------------------------------------------------------------------
// __primary__________40.000____________0.010

`timescale 1ps/1ps

(* CORE_GENERATION_INFO = "b200_clk_gen,clk_wiz_v3_6,{component_name=b200_clk_gen,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,feedback_source=FDBK_AUTO,primtype_sel=DCM_SP,num_out_clk=3,clkin1_period=25.0,clkin2_period=25.0,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,use_status=false,use_freeze=false,use_clk_valid=false,feedback_type=SINGLE,clock_mgr_type=AUTO,manual_override=false}" *)
module b200_clk_gen
 (// Clock in ports
  input         CLK_IN1_40_P,
  input         CLK_IN1_40_N,
  // Clock out ports
  output        CLK_OUT1_40_int,
  output        CLK_OUT2_100_gpif,
  output        CLK_OUT3_100_bus,
  // Status and control signals
  input         RESET,
  output        LOCKED
 );

  // Input buffering
  //------------------------------------
  IBUFGDS clkin1_buf
   (.O  (clkin1),
    .I  (CLK_IN1_40_P),
    .IB (CLK_IN1_40_N));


  // Clocking primitive
  //------------------------------------

  // Instantiation of the DCM primitive
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused
  wire        psdone_unused;
  wire        locked_int;
  wire [7:0]  status_int;
  wire clkfb;
  wire clk0;
  wire clkfx;

  DCM_SP
  #(.CLKDV_DIVIDE          (2.000),
    .CLKFX_DIVIDE          (2),
    .CLKFX_MULTIPLY        (5),
    .CLKIN_DIVIDE_BY_2     ("FALSE"),
    .CLKIN_PERIOD          (25.0),
    .CLKOUT_PHASE_SHIFT    ("NONE"),
    .CLK_FEEDBACK          ("1X"),
    .DESKEW_ADJUST         ("SYSTEM_SYNCHRONOUS"),
    .PHASE_SHIFT           (0),
    .STARTUP_WAIT          ("FALSE"))
  dcm_sp_inst
    // Input clock
   (.CLKIN                 (clkin1),
    .CLKFB                 (clkfb),
    // Output clocks
    .CLK0                  (clk0),
    .CLK90                 (),
    .CLK180                (),
    .CLK270                (),
    .CLK2X                 (),
    .CLK2X180              (),
    .CLKFX                 (clkfx),
    .CLKFX180              (),
    .CLKDV                 (),
    // Ports for dynamic phase shift
    .PSCLK                 (1'b0),
    .PSEN                  (1'b0),
    .PSINCDEC              (1'b0),
    .PSDONE                (),
    // Other control and status signals
    .LOCKED                (locked_int),
    .STATUS                (status_int),
 
    .RST                   (RESET),
    // Unused pin- tie low
    .DSSEN                 (1'b0));

    assign LOCKED = locked_int;

  // Output buffering
  //-----------------------------------
  assign clkfb = CLK_OUT1_40_int;

  BUFG clkout1_buf
   (.O   (CLK_OUT1_40_int),
    .I   (clk0));


  BUFG clkout2_buf
   (.O   (CLK_OUT2_100_gpif),
    .I   (clkfx));

  BUFG clkout3_buf
   (.O   (CLK_OUT3_100_bus),
    .I   (clkfx));



endmodule
