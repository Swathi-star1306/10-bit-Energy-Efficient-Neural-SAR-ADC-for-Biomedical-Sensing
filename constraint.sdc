###############################################################
# SDC CONSTRAINT FILE
# PROJECT : 10-BIT ENERGY-EFFICIENT SAR ADC
# TARGET  : BIOMEDICAL NEURAL SENSING
# FLOW    : NC Launch -> Genus -> Innovus
# TECHNOLOGY : 55nm / 28nm CMOS
###############################################################

current_design neural_sar_adc_top

###############################################################
# CLOCK DEFINITIONS
###############################################################

# Main Sampling Clock
# 50 MHz low-power biomedical clock

create_clock \
-name clk \
-period 20 \
-waveform {0 10} \
[get_ports clk]

###############################################################
# CLOCK ATTRIBUTES
###############################################################

# Clock uncertainty for jitter/skew margin

set_clock_uncertainty 0.2 [get_clocks clk]

# Clock transition

set_clock_transition 0.1 [get_clocks clk]

# Clock latency

set_clock_latency 0.3 [get_clocks clk]

###############################################################
# FALSE PATHS
###############################################################

# Ignore asynchronous reset timing path

set_false_path \
-from [get_ports rst_n]

###############################################################
# INPUT DELAYS
###############################################################

# Pseudo-Differential Analog Inputs

set_input_delay 2.0 \
-clock clk \
[get_ports vin_p[*]]

set_input_delay 2.0 \
-clock clk \
[get_ports vin_n[*]]

###############################################################
# OUTPUT DELAYS
###############################################################

# Digital ADC Output

set_output_delay 2.0 \
-clock clk \
[get_ports digital_out[*]]

# Status Outputs

set_output_delay 2.0 \
-clock clk \
[get_ports conversion_done]

set_output_delay 2.0 \
-clock clk \
[get_ports spike_detected]

###############################################################
# DESIGN RULE CONSTRAINTS
###############################################################

# Maximum transition limit

set_max_transition 0.5 [current_design]

# Maximum fanout

set_max_fanout 8 [current_design]

# Maximum capacitance

set_max_capacitance 0.08 [current_design]

###############################################################
# INPUT DRIVE STRENGTH
###############################################################

set_drive 1 [get_ports vin_p[*]]

set_drive 1 [get_ports vin_n[*]]

###############################################################
# OUTPUT LOAD
###############################################################

set_load 0.05 [get_ports digital_out[*]]

set_load 0.05 [get_ports conversion_done]

set_load 0.05 [get_ports spike_detected]

###############################################################
# LOW-POWER OPTIMIZATION CONSTRAINTS
###############################################################

# Enable power-aware optimization

set_dynamic_optimization true

# Reduce leakage optimization priority

set_leakage_optimization true

###############################################################
# TIMING OPTIMIZATION
###############################################################

# Setup timing optimization

set_fix_hold [get_clocks clk]

###############################################################
# OPERATING CONDITIONS
###############################################################

# Typical biomedical low-voltage corner

set_operating_conditions typical

###############################################################
# WIRE LOAD MODEL
###############################################################

set_wire_load_mode enclosed

###############################################################
# END OF FILE
###############################################################
