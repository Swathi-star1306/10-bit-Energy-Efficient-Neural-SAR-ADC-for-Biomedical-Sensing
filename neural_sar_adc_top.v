`timescale 1ns/1ps

module neural_sar_adc_top(

    input clk,
    input rst_n,

    input [9:0] vin_p,
    input [9:0] vin_n,

    output reg [9:0] digital_out,
    output reg conversion_done,
    output reg spike_detected

);

    //--------------------------------------------------
    // INTERNAL SIGNALS
    //--------------------------------------------------

    reg [9:0] sampled_signal;

    //--------------------------------------------------
    // SPIKE DETECTOR
    //--------------------------------------------------

    always @(posedge clk or negedge rst_n)
    begin

        if(!rst_n)
            spike_detected <= 1'b0;

        else
        begin

            if((vin_p - vin_n) > 10'd20)
                spike_detected <= 1'b1;
            else
                spike_detected <= 1'b0;

        end

    end

    //--------------------------------------------------
    // ADC CONVERSION
    //--------------------------------------------------

    always @(posedge clk or negedge rst_n)
    begin

        if(!rst_n)
        begin

            sampled_signal <= 10'd0;

            digital_out <= 10'd0;

            conversion_done <= 1'b0;

        end

        else
        begin

            conversion_done <= 1'b0;

            //------------------------------------------------
            // START CONVERSION WHEN SPIKE DETECTED
            //------------------------------------------------

            if(spike_detected)
            begin

                sampled_signal <= vin_p - vin_n;

                // Simple 10-bit SAR-style conversion
                digital_out <= (vin_p - vin_n);

                conversion_done <= 1'b1;

            end

        end

    end

endmodule
