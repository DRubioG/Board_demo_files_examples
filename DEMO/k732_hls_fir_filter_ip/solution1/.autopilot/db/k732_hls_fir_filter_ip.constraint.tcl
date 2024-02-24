set clock_constraint { \
    name clk \
    module k732_hls_fir_filter_ip \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}

