module sobel_sim_tb
    (

    );
    
    
    image_sobel_process image_sobel_process_inst
      (
        .image_valid(),
        .ram_data_addr(),
        .ram_data(),
        .vsync(),
        .sobel_valid(),
        .sobel_data(),
        .vga_sync_clk(),
        .rstn()
    );
    
    
    endmodule
