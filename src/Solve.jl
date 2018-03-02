include("Include.jl")

# load the data dictionary -
#data_dictionary = maximize_acetate_data_dictionary(0,0,0)
#data_dictionary = maximize_atp_data_dictionary(0,0,0)
# functions that maximize growth rate with and without oxygen
# aerobic growth - last number represents whether the function is run with constraints
#data_dictionary = maximize_cellmass_data_dictionary(0,0,0,1)
# anaerobic growth
#data_dictionary = maximize_cellmass_no_oxygen(0,0,0,1)

# solve the lp problem -
(objective_value, flux_array, dual_array, uptake_array, exit_flag) = FluxDriver(data_dictionary)
