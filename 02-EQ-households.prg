'HOUSEHOLDS

'Nominal and real financial wealth
'eq 2.01
philia.append V = V(-1) + (YD_w + YD_r - C_total)
'eq 2.02
philia.append V_w = V_w(-1) +(YD_w - C_w)
'eq 2.03
philia.append V_r = V - V_w
'eq 2.04
philia.append V_real = V / gp
'eq 2.05
philia.append V_w_real = V_w / gp
'eq 2.06
philia.append V_r_real = V_r / gp


'## CONSUMPTION

'Nominal and real household consumption  
'eq 2.10
philia.append C_w = alfa0 + alfa1 * (YD_w) + alfa2 * V_w(-1)
'eq 2.11
philia.append C_r = alfa0 + alfa1 * (YD_r) 
'eq 2.12
philia.append alfa2 = alfa2(-1) / (1 + upsilon * ecosystemic_shock * dmg_ecs(-1))  
'eq 2.13
philia.append C_w_real = C_w / gp
'eq 2.14
philia.append C_r_real = C_r / gp 


'Consumption allocation
'eq 2.15
philia.append C_c = alfa_c * C_total 
'eq 2.16
philia.append C_p = alfa_p * C_total 
'eq 2.17
philia.append C_k = C_total - C_c - C_p 


'## SAVING

'Households' portfolio choice
'eq 2.20
philia.append M_d_w = kappa10 * V_w(-1) + kappa11 * V_w(-1) * i_sa(-1) - kappa12 * YD_w
'eq 2.21
philia.append H_d_w = V_w - M_d_w
'eq 2.22a
philia.append M_d_r = gamma10 * V_r(-1) + gamma11 * i_sa * V_r(-1) - gamma12 * r_if * V_r(-1) + gamma14 * ecosystemic_shock * dmg_ecs(-1) * V_r(-1) + gamma15 * YD_r 
'eq 2.22b
philia.append S_d_r = gamma20 * V_r(-1) - gamma21 * i_sa * V_r(-1) + gamma22 * r_if * V_r(-1) - gamma24 * ecosystemic_shock * dmg_ecs(-1) * V_r(-1) + gamma25 * YD_r  
'eq 2.23
philia.append gamma10 = @recode(gamma10_n < 0.8, gamma10_n, 0.8)
philia.append gamma10_n = gamma10_n(-1) * (1 + omega * ecosystemic_shock * dmg_ecs(-1)) 
philia.append gamma20 = gamma20(-1) - (gamma10 - gamma10(-1))
'eq 2.24
philia.append H_d_r = V_r - M_d_r - S_d_r 
'eq 2.25
philia.append stock_H_d_h = V - M_d_h - S_d_r  
'eq 2.26
philia.append M_d_h = M_d_w + M_d_r 


'## INCOME

'Nominal and real household disposable income
'eq 2.30
philia.append YD_w = (1 - teta_w) * (WB + (1 - ret_c) * PnL_c + i_sa * M_d_w(-1))
'eq 2.31
philia.append YD_r = (1 - teta_r) * (div_if + i_sa * M_d_r(-1)) 
'eq 2.32
philia.append YD_w_real = @recode(YD_w / GP - pi * V_w(-1) > 0, YD_w / GP - pi * V_w(-1), 0) 
'eq 2.33
philia.append YD_r_real = @recode(YD_r / GP - pi * V_r(-1) > 0, YD_r / GP - pi * V_r(-1), 0) 


'Wage bill and allocation of wages
'eq 2.34
philia.append WB = iota_WB(-1) * Y 
'eq 2.35
philia.append WB_c = rho_c * WB 
'eq 2.36
philia.append WB_k = rho_k * WB 
'eq 2.37
philia.append WB_p = rho_p * WB


