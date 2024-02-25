# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BREATH_COUNTER_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "BREATH_ERIOD" -parent ${Page_0}
  ipgui::add_param $IPINST -name "CLOCK_FRQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "COMPARE_VALUE_STEP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PWM_COUNTER_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PWM_FRQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SET_COMPARE_COUNTER_MAX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SET_COMPARE_FRQ" -parent ${Page_0}


}

proc update_PARAM_VALUE.BREATH_COUNTER_MAX { PARAM_VALUE.BREATH_COUNTER_MAX } {
	# Procedure called to update BREATH_COUNTER_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BREATH_COUNTER_MAX { PARAM_VALUE.BREATH_COUNTER_MAX } {
	# Procedure called to validate BREATH_COUNTER_MAX
	return true
}

proc update_PARAM_VALUE.BREATH_ERIOD { PARAM_VALUE.BREATH_ERIOD } {
	# Procedure called to update BREATH_ERIOD when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BREATH_ERIOD { PARAM_VALUE.BREATH_ERIOD } {
	# Procedure called to validate BREATH_ERIOD
	return true
}

proc update_PARAM_VALUE.CLOCK_FRQ { PARAM_VALUE.CLOCK_FRQ } {
	# Procedure called to update CLOCK_FRQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CLOCK_FRQ { PARAM_VALUE.CLOCK_FRQ } {
	# Procedure called to validate CLOCK_FRQ
	return true
}

proc update_PARAM_VALUE.COMPARE_VALUE_STEP { PARAM_VALUE.COMPARE_VALUE_STEP } {
	# Procedure called to update COMPARE_VALUE_STEP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COMPARE_VALUE_STEP { PARAM_VALUE.COMPARE_VALUE_STEP } {
	# Procedure called to validate COMPARE_VALUE_STEP
	return true
}

proc update_PARAM_VALUE.PWM_COUNTER_MAX { PARAM_VALUE.PWM_COUNTER_MAX } {
	# Procedure called to update PWM_COUNTER_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PWM_COUNTER_MAX { PARAM_VALUE.PWM_COUNTER_MAX } {
	# Procedure called to validate PWM_COUNTER_MAX
	return true
}

proc update_PARAM_VALUE.PWM_FRQ { PARAM_VALUE.PWM_FRQ } {
	# Procedure called to update PWM_FRQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PWM_FRQ { PARAM_VALUE.PWM_FRQ } {
	# Procedure called to validate PWM_FRQ
	return true
}

proc update_PARAM_VALUE.SET_COMPARE_COUNTER_MAX { PARAM_VALUE.SET_COMPARE_COUNTER_MAX } {
	# Procedure called to update SET_COMPARE_COUNTER_MAX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SET_COMPARE_COUNTER_MAX { PARAM_VALUE.SET_COMPARE_COUNTER_MAX } {
	# Procedure called to validate SET_COMPARE_COUNTER_MAX
	return true
}

proc update_PARAM_VALUE.SET_COMPARE_FRQ { PARAM_VALUE.SET_COMPARE_FRQ } {
	# Procedure called to update SET_COMPARE_FRQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SET_COMPARE_FRQ { PARAM_VALUE.SET_COMPARE_FRQ } {
	# Procedure called to validate SET_COMPARE_FRQ
	return true
}


proc update_MODELPARAM_VALUE.CLOCK_FRQ { MODELPARAM_VALUE.CLOCK_FRQ PARAM_VALUE.CLOCK_FRQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CLOCK_FRQ}] ${MODELPARAM_VALUE.CLOCK_FRQ}
}

proc update_MODELPARAM_VALUE.PWM_FRQ { MODELPARAM_VALUE.PWM_FRQ PARAM_VALUE.PWM_FRQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PWM_FRQ}] ${MODELPARAM_VALUE.PWM_FRQ}
}

proc update_MODELPARAM_VALUE.BREATH_ERIOD { MODELPARAM_VALUE.BREATH_ERIOD PARAM_VALUE.BREATH_ERIOD } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BREATH_ERIOD}] ${MODELPARAM_VALUE.BREATH_ERIOD}
}

proc update_MODELPARAM_VALUE.SET_COMPARE_FRQ { MODELPARAM_VALUE.SET_COMPARE_FRQ PARAM_VALUE.SET_COMPARE_FRQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SET_COMPARE_FRQ}] ${MODELPARAM_VALUE.SET_COMPARE_FRQ}
}

proc update_MODELPARAM_VALUE.PWM_COUNTER_MAX { MODELPARAM_VALUE.PWM_COUNTER_MAX PARAM_VALUE.PWM_COUNTER_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PWM_COUNTER_MAX}] ${MODELPARAM_VALUE.PWM_COUNTER_MAX}
}

proc update_MODELPARAM_VALUE.BREATH_COUNTER_MAX { MODELPARAM_VALUE.BREATH_COUNTER_MAX PARAM_VALUE.BREATH_COUNTER_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BREATH_COUNTER_MAX}] ${MODELPARAM_VALUE.BREATH_COUNTER_MAX}
}

proc update_MODELPARAM_VALUE.SET_COMPARE_COUNTER_MAX { MODELPARAM_VALUE.SET_COMPARE_COUNTER_MAX PARAM_VALUE.SET_COMPARE_COUNTER_MAX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SET_COMPARE_COUNTER_MAX}] ${MODELPARAM_VALUE.SET_COMPARE_COUNTER_MAX}
}

proc update_MODELPARAM_VALUE.COMPARE_VALUE_STEP { MODELPARAM_VALUE.COMPARE_VALUE_STEP PARAM_VALUE.COMPARE_VALUE_STEP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COMPARE_VALUE_STEP}] ${MODELPARAM_VALUE.COMPARE_VALUE_STEP}
}

