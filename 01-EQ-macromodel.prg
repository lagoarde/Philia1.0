'MACROECONOMIC MODEL

'Nominal GDP
'eq 1.01
philia.append Y = C_total + Inv + G
'eq 1.02
philia.append Inv = Inv_s_k + Inv_s_c + Inv_s_p
'eq 1.03
philia.append C_total = C_w + C_r


'Inflation and real GDP
'eq 1.10
philia.append pi = pi_f + epsilon_pi
'eq 1.11
philia.append epsilon_pi = epsilon_pi(-1) + pi_ecs
'eq 1.12
philia.append pi_ecs = ecosystemic_shock * @recode( @date<@dateval("152"), 0, omicron_ecs * (dep_en(-1) + dep_mat(-1) * ecosystemic_shock * dmg_ecs(-1)) )
philia.append omicron_ecs = 0.1 
'eq 1.13
philia.append iota_wb = (omega_wb * iota_wb_Tgt + psi_f * iota_f_Tgt) / (omega_wb + psi_f) 
'eq 1.14
philia.append pi_f = omega_wb * psi_f * (iota_wb_Tgt - iota_f_Tgt) / (omega_wb + psi_f) 
'eq 1.15
philia.append iota_wb_Tgt = iota_wb_Tgt(-1) / (1 + pi) 
'eq 1.16
philia.append omega_wb = omega_wb(-1) / (1 + pi) 
'eq 1.17
philia.append gp = gp(-1) * (1 + pi)
'eq 1.18
philia.append Y_real  = Y / gp


'Productive capital assets
'eq 1.20
philia.append K = K_k + K_c + K_p
'eq 1.21
philia.append DA = DA_k + DA_c + DA_p
'eq 1.22
philia.append K_b = K_k_b + K_c_b + K_p_b
'eq 1.23
philia.append K_g = K - K_b


