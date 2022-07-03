library verilog;
use verilog.vl_types.all;
entity cycloneii_pll is
    generic(
        operation_mode  : string  := "normal";
        pll_type        : string  := "auto";
        compensate_clock: string  := "clk0";
        feedback_source : string  := "clk0";
        qualify_conf_done: string  := "off";
        test_input_comp_delay_chain_bits: integer := 0;
        test_feedback_comp_delay_chain_bits: integer := 0;
        inclk0_input_frequency: integer := 10000;
        inclk1_input_frequency: integer := 10000;
        gate_lock_signal: string  := "no";
        gate_lock_counter: integer := 1;
        self_reset_on_gated_loss_lock: string  := "off";
        valid_lock_multiplier: integer := 1;
        invalid_lock_multiplier: integer := 5;
        switch_over_type: string  := "manual";
        switch_over_on_lossclk: string  := "off";
        switch_over_on_gated_lock: string  := "off";
        switch_over_counter: integer := 1;
        enable_switch_over_counter: string  := "on";
        bandwidth       : integer := 0;
        bandwidth_type  : string  := "auto";
        spread_frequency: integer := 0;
        use_dc_coupling : string  := "false";
        clk0_output_frequency: integer := 0;
        clk0_multiply_by: integer := 1;
        clk0_divide_by  : integer := 1;
        clk0_phase_shift: string  := "0";
        clk0_duty_cycle : integer := 50;
        clk1_output_frequency: integer := 0;
        clk1_multiply_by: integer := 1;
        clk1_divide_by  : integer := 1;
        clk1_phase_shift: string  := "0";
        clk1_duty_cycle : integer := 50;
        clk2_output_frequency: integer := 0;
        clk2_multiply_by: integer := 1;
        clk2_divide_by  : integer := 1;
        clk2_phase_shift: string  := "0";
        clk2_duty_cycle : integer := 50;
        clk3_output_frequency: integer := 0;
        clk3_multiply_by: integer := 1;
        clk3_divide_by  : integer := 1;
        clk3_phase_shift: string  := "0";
        clk3_duty_cycle : integer := 50;
        clk4_output_frequency: integer := 0;
        clk4_multiply_by: integer := 1;
        clk4_divide_by  : integer := 1;
        clk4_phase_shift: string  := "0";
        clk4_duty_cycle : integer := 50;
        clk5_output_frequency: integer := 0;
        clk5_multiply_by: integer := 1;
        clk5_divide_by  : integer := 1;
        clk5_phase_shift: string  := "0";
        clk5_duty_cycle : integer := 50;
        pfd_min         : integer := 0;
        pfd_max         : integer := 0;
        vco_min         : integer := 0;
        vco_max         : integer := 0;
        vco_center      : integer := 0;
        m_initial       : integer := 1;
        m               : integer := 0;
        n               : integer := 1;
        m2              : integer := 1;
        n2              : integer := 1;
        ss              : integer := 0;
        c0_high         : integer := 1;
        c0_low          : integer := 1;
        c0_initial      : integer := 1;
        c0_mode         : string  := "bypass";
        c0_ph           : integer := 0;
        c1_high         : integer := 1;
        c1_low          : integer := 1;
        c1_initial      : integer := 1;
        c1_mode         : string  := "bypass";
        c1_ph           : integer := 0;
        c2_high         : integer := 1;
        c2_low          : integer := 1;
        c2_initial      : integer := 1;
        c2_mode         : string  := "bypass";
        c2_ph           : integer := 0;
        c3_high         : integer := 1;
        c3_low          : integer := 1;
        c3_initial      : integer := 1;
        c3_mode         : string  := "bypass";
        c3_ph           : integer := 0;
        c4_high         : integer := 1;
        c4_low          : integer := 1;
        c4_initial      : integer := 1;
        c4_mode         : string  := "bypass";
        c4_ph           : integer := 0;
        c5_high         : integer := 1;
        c5_low          : integer := 1;
        c5_initial      : integer := 1;
        c5_mode         : string  := "bypass";
        c5_ph           : integer := 0;
        m_ph            : integer := 0;
        clk0_counter    : string  := "c0";
        clk1_counter    : string  := "c1";
        clk2_counter    : string  := "c2";
        clk3_counter    : string  := "c3";
        clk4_counter    : string  := "c4";
        clk5_counter    : string  := "c5";
        c1_use_casc_in  : string  := "off";
        c2_use_casc_in  : string  := "off";
        c3_use_casc_in  : string  := "off";
        c4_use_casc_in  : string  := "off";
        c5_use_casc_in  : string  := "off";
        m_test_source   : integer := 5;
        c0_test_source  : integer := 5;
        c1_test_source  : integer := 5;
        c2_test_source  : integer := 5;
        c3_test_source  : integer := 5;
        c4_test_source  : integer := 5;
        c5_test_source  : integer := 5;
        vco_multiply_by : integer := 0;
        vco_divide_by   : integer := 0;
        vco_post_scale  : integer := 1;
        charge_pump_current: integer := 52;
        loop_filter_r   : string  := "1.0";
        loop_filter_c   : integer := 16;
        pll_compensation_delay: integer := 0;
        simulation_type : string  := "functional";
        lpm_type        : string  := "cycloneii_pll";
        down_spread     : string  := "0.0";
        sim_gate_lock_device_behavior: string  := "off";
        clk0_phase_shift_num: integer := 0;
        clk1_phase_shift_num: integer := 0;
        clk2_phase_shift_num: integer := 0;
        family_name     : string  := "CycloneII";
        clk0_use_even_counter_mode: string  := "off";
        clk1_use_even_counter_mode: string  := "off";
        clk2_use_even_counter_mode: string  := "off";
        clk3_use_even_counter_mode: string  := "off";
        clk4_use_even_counter_mode: string  := "off";
        clk5_use_even_counter_mode: string  := "off";
        clk0_use_even_counter_value: string  := "off";
        clk1_use_even_counter_value: string  := "off";
        clk2_use_even_counter_value: string  := "off";
        clk3_use_even_counter_value: string  := "off";
        clk4_use_even_counter_value: string  := "off";
        clk5_use_even_counter_value: string  := "off";
        GPP_SCAN_CHAIN  : integer := 174;
        FAST_SCAN_CHAIN : integer := 75;
        prim_clk        : string  := "inclk0";
        GATE_LOCK_CYCLES: integer := 7
    );
    port(
        inclk           : in     vl_logic_vector(1 downto 0);
        ena             : in     vl_logic;
        clkswitch       : in     vl_logic;
        areset          : in     vl_logic;
        pfdena          : in     vl_logic;
        testclearlock   : in     vl_logic;
        clk             : out    vl_logic_vector(2 downto 0);
        locked          : out    vl_logic;
        testupout       : out    vl_logic;
        testdownout     : out    vl_logic;
        sbdin           : in     vl_logic;
        sbdout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of operation_mode : constant is 1;
    attribute mti_svvh_generic_type of pll_type : constant is 1;
    attribute mti_svvh_generic_type of compensate_clock : constant is 1;
    attribute mti_svvh_generic_type of feedback_source : constant is 1;
    attribute mti_svvh_generic_type of qualify_conf_done : constant is 1;
    attribute mti_svvh_generic_type of test_input_comp_delay_chain_bits : constant is 1;
    attribute mti_svvh_generic_type of test_feedback_comp_delay_chain_bits : constant is 1;
    attribute mti_svvh_generic_type of inclk0_input_frequency : constant is 1;
    attribute mti_svvh_generic_type of inclk1_input_frequency : constant is 1;
    attribute mti_svvh_generic_type of gate_lock_signal : constant is 1;
    attribute mti_svvh_generic_type of gate_lock_counter : constant is 1;
    attribute mti_svvh_generic_type of self_reset_on_gated_loss_lock : constant is 1;
    attribute mti_svvh_generic_type of valid_lock_multiplier : constant is 1;
    attribute mti_svvh_generic_type of invalid_lock_multiplier : constant is 1;
    attribute mti_svvh_generic_type of switch_over_type : constant is 1;
    attribute mti_svvh_generic_type of switch_over_on_lossclk : constant is 1;
    attribute mti_svvh_generic_type of switch_over_on_gated_lock : constant is 1;
    attribute mti_svvh_generic_type of switch_over_counter : constant is 1;
    attribute mti_svvh_generic_type of enable_switch_over_counter : constant is 1;
    attribute mti_svvh_generic_type of bandwidth : constant is 1;
    attribute mti_svvh_generic_type of bandwidth_type : constant is 1;
    attribute mti_svvh_generic_type of spread_frequency : constant is 1;
    attribute mti_svvh_generic_type of use_dc_coupling : constant is 1;
    attribute mti_svvh_generic_type of clk0_output_frequency : constant is 1;
    attribute mti_svvh_generic_type of clk0_multiply_by : constant is 1;
    attribute mti_svvh_generic_type of clk0_divide_by : constant is 1;
    attribute mti_svvh_generic_type of clk0_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of clk0_duty_cycle : constant is 1;
    attribute mti_svvh_generic_type of clk1_output_frequency : constant is 1;
    attribute mti_svvh_generic_type of clk1_multiply_by : constant is 1;
    attribute mti_svvh_generic_type of clk1_divide_by : constant is 1;
    attribute mti_svvh_generic_type of clk1_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of clk1_duty_cycle : constant is 1;
    attribute mti_svvh_generic_type of clk2_output_frequency : constant is 1;
    attribute mti_svvh_generic_type of clk2_multiply_by : constant is 1;
    attribute mti_svvh_generic_type of clk2_divide_by : constant is 1;
    attribute mti_svvh_generic_type of clk2_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of clk2_duty_cycle : constant is 1;
    attribute mti_svvh_generic_type of clk3_output_frequency : constant is 1;
    attribute mti_svvh_generic_type of clk3_multiply_by : constant is 1;
    attribute mti_svvh_generic_type of clk3_divide_by : constant is 1;
    attribute mti_svvh_generic_type of clk3_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of clk3_duty_cycle : constant is 1;
    attribute mti_svvh_generic_type of clk4_output_frequency : constant is 1;
    attribute mti_svvh_generic_type of clk4_multiply_by : constant is 1;
    attribute mti_svvh_generic_type of clk4_divide_by : constant is 1;
    attribute mti_svvh_generic_type of clk4_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of clk4_duty_cycle : constant is 1;
    attribute mti_svvh_generic_type of clk5_output_frequency : constant is 1;
    attribute mti_svvh_generic_type of clk5_multiply_by : constant is 1;
    attribute mti_svvh_generic_type of clk5_divide_by : constant is 1;
    attribute mti_svvh_generic_type of clk5_phase_shift : constant is 1;
    attribute mti_svvh_generic_type of clk5_duty_cycle : constant is 1;
    attribute mti_svvh_generic_type of pfd_min : constant is 1;
    attribute mti_svvh_generic_type of pfd_max : constant is 1;
    attribute mti_svvh_generic_type of vco_min : constant is 1;
    attribute mti_svvh_generic_type of vco_max : constant is 1;
    attribute mti_svvh_generic_type of vco_center : constant is 1;
    attribute mti_svvh_generic_type of m_initial : constant is 1;
    attribute mti_svvh_generic_type of m : constant is 1;
    attribute mti_svvh_generic_type of n : constant is 1;
    attribute mti_svvh_generic_type of m2 : constant is 1;
    attribute mti_svvh_generic_type of n2 : constant is 1;
    attribute mti_svvh_generic_type of ss : constant is 1;
    attribute mti_svvh_generic_type of c0_high : constant is 1;
    attribute mti_svvh_generic_type of c0_low : constant is 1;
    attribute mti_svvh_generic_type of c0_initial : constant is 1;
    attribute mti_svvh_generic_type of c0_mode : constant is 1;
    attribute mti_svvh_generic_type of c0_ph : constant is 1;
    attribute mti_svvh_generic_type of c1_high : constant is 1;
    attribute mti_svvh_generic_type of c1_low : constant is 1;
    attribute mti_svvh_generic_type of c1_initial : constant is 1;
    attribute mti_svvh_generic_type of c1_mode : constant is 1;
    attribute mti_svvh_generic_type of c1_ph : constant is 1;
    attribute mti_svvh_generic_type of c2_high : constant is 1;
    attribute mti_svvh_generic_type of c2_low : constant is 1;
    attribute mti_svvh_generic_type of c2_initial : constant is 1;
    attribute mti_svvh_generic_type of c2_mode : constant is 1;
    attribute mti_svvh_generic_type of c2_ph : constant is 1;
    attribute mti_svvh_generic_type of c3_high : constant is 1;
    attribute mti_svvh_generic_type of c3_low : constant is 1;
    attribute mti_svvh_generic_type of c3_initial : constant is 1;
    attribute mti_svvh_generic_type of c3_mode : constant is 1;
    attribute mti_svvh_generic_type of c3_ph : constant is 1;
    attribute mti_svvh_generic_type of c4_high : constant is 1;
    attribute mti_svvh_generic_type of c4_low : constant is 1;
    attribute mti_svvh_generic_type of c4_initial : constant is 1;
    attribute mti_svvh_generic_type of c4_mode : constant is 1;
    attribute mti_svvh_generic_type of c4_ph : constant is 1;
    attribute mti_svvh_generic_type of c5_high : constant is 1;
    attribute mti_svvh_generic_type of c5_low : constant is 1;
    attribute mti_svvh_generic_type of c5_initial : constant is 1;
    attribute mti_svvh_generic_type of c5_mode : constant is 1;
    attribute mti_svvh_generic_type of c5_ph : constant is 1;
    attribute mti_svvh_generic_type of m_ph : constant is 1;
    attribute mti_svvh_generic_type of clk0_counter : constant is 1;
    attribute mti_svvh_generic_type of clk1_counter : constant is 1;
    attribute mti_svvh_generic_type of clk2_counter : constant is 1;
    attribute mti_svvh_generic_type of clk3_counter : constant is 1;
    attribute mti_svvh_generic_type of clk4_counter : constant is 1;
    attribute mti_svvh_generic_type of clk5_counter : constant is 1;
    attribute mti_svvh_generic_type of c1_use_casc_in : constant is 1;
    attribute mti_svvh_generic_type of c2_use_casc_in : constant is 1;
    attribute mti_svvh_generic_type of c3_use_casc_in : constant is 1;
    attribute mti_svvh_generic_type of c4_use_casc_in : constant is 1;
    attribute mti_svvh_generic_type of c5_use_casc_in : constant is 1;
    attribute mti_svvh_generic_type of m_test_source : constant is 1;
    attribute mti_svvh_generic_type of c0_test_source : constant is 1;
    attribute mti_svvh_generic_type of c1_test_source : constant is 1;
    attribute mti_svvh_generic_type of c2_test_source : constant is 1;
    attribute mti_svvh_generic_type of c3_test_source : constant is 1;
    attribute mti_svvh_generic_type of c4_test_source : constant is 1;
    attribute mti_svvh_generic_type of c5_test_source : constant is 1;
    attribute mti_svvh_generic_type of vco_multiply_by : constant is 1;
    attribute mti_svvh_generic_type of vco_divide_by : constant is 1;
    attribute mti_svvh_generic_type of vco_post_scale : constant is 1;
    attribute mti_svvh_generic_type of charge_pump_current : constant is 1;
    attribute mti_svvh_generic_type of loop_filter_r : constant is 1;
    attribute mti_svvh_generic_type of loop_filter_c : constant is 1;
    attribute mti_svvh_generic_type of pll_compensation_delay : constant is 1;
    attribute mti_svvh_generic_type of simulation_type : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of down_spread : constant is 1;
    attribute mti_svvh_generic_type of sim_gate_lock_device_behavior : constant is 1;
    attribute mti_svvh_generic_type of clk0_phase_shift_num : constant is 1;
    attribute mti_svvh_generic_type of clk1_phase_shift_num : constant is 1;
    attribute mti_svvh_generic_type of clk2_phase_shift_num : constant is 1;
    attribute mti_svvh_generic_type of family_name : constant is 1;
    attribute mti_svvh_generic_type of clk0_use_even_counter_mode : constant is 1;
    attribute mti_svvh_generic_type of clk1_use_even_counter_mode : constant is 1;
    attribute mti_svvh_generic_type of clk2_use_even_counter_mode : constant is 1;
    attribute mti_svvh_generic_type of clk3_use_even_counter_mode : constant is 1;
    attribute mti_svvh_generic_type of clk4_use_even_counter_mode : constant is 1;
    attribute mti_svvh_generic_type of clk5_use_even_counter_mode : constant is 1;
    attribute mti_svvh_generic_type of clk0_use_even_counter_value : constant is 1;
    attribute mti_svvh_generic_type of clk1_use_even_counter_value : constant is 1;
    attribute mti_svvh_generic_type of clk2_use_even_counter_value : constant is 1;
    attribute mti_svvh_generic_type of clk3_use_even_counter_value : constant is 1;
    attribute mti_svvh_generic_type of clk4_use_even_counter_value : constant is 1;
    attribute mti_svvh_generic_type of clk5_use_even_counter_value : constant is 1;
    attribute mti_svvh_generic_type of GPP_SCAN_CHAIN : constant is 1;
    attribute mti_svvh_generic_type of FAST_SCAN_CHAIN : constant is 1;
    attribute mti_svvh_generic_type of prim_clk : constant is 1;
    attribute mti_svvh_generic_type of GATE_LOCK_CYCLES : constant is 1;
end cycloneii_pll;
