
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Quantunm -dir "C:/Users/Sina/Desktop/Quantunm/planAhead_run_1" -part xc3s700afg484-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Sina/Desktop/Quantunm/multiplier.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Sina/Desktop/Quantunm} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "multiplier.ucf" [current_fileset -constrset]
add_files [list {multiplier.ucf}] -fileset [get_property constrset [current_run]]
link_design
