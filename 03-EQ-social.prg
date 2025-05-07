'SOCIAL ENTERPRISES

'Surplus
'eq 3.01
philia.append PnL_c = (1 - teta_c) * (C_c + Inv_s_c + G_c - WB_c - DA_c - (i_l_c_b * l_s_c_b(-1) + i_l_c_g * l_s_c_g(-1)))


'## INVESTMENT (ASSETS)

'Total investment demand
'eq 3.10
philia.append K_c = K_c_g + K_c_b 
'eq 3.11
philia.append DA_c = DA_c_b + DA_c_g
'eq 3.12
philia.append DA_c_b = lambda * K_c_b(-1)
'eq 3.13
philia.append DA_c_g = lambda * K_c_g(-1) 


'Productive assets
'eq 3.14
philia.append K_c_g = K_c_g(-1) + Inv_s_c_g - DA_c_g
'eq 3.15
philia.append K_c_b = @recode(K_c_b(-1) + Inv_s_c_b - DA_c_b > 0, K_c_b(-1) + inv_s_c_b - DA_c_b, 0)
'eq 3.16
philia.append K_c_Tgt  = K_c(-1) * (1 + iota1 * (PnL_c(-1)  / K_c(-1)  - iota2  * (stock_L_s_c(-1)  / K_c(-1))))
'eq 3.17
philia.append Inv_d_c  = @recode(nu_c  * (K_c_Tgt  - K_c(-1)) + DA_c > 0, nu_c  * (K_c_Tgt  - K_c(-1)) + DA_c, 0) 


'Green structure of investment demand
'eq 3.18
philia.append Inv_d_c_g  = @recode(omega1_c * Inv_d_c * (1 + ad_ecs * ecosystemic_shock * dmg_ecs(-1) + d(inv_d_p_g) / inv_d_p_g(-1) + omega2_c * (i_l_c_b(-1) - i_l_c_g(-1))) < Inv_d_c, omega1_c * Inv_d_c * (1 + ad_ecs * ecosystemic_shock * dmg_ecs(-1) + d(inv_d_p_g) / inv_d_p_g(-1) + omega2_c * (i_l_c_b(-1) - i_l_c_g(-1))), Inv_d_c) 
'eq 3.19
philia.append Inv_d_c_b = @recode(Inv_d_c - Inv_d_c_g > 0, Inv_d_c - Inv_d_c_g, 0)


'Investment spending
'eq 3.20
philia.append Inv_s_c_g = @recode(Inv_d_c > 0, l_s_c_g + PnL_c * ret_c * (Inv_d_c_g / Inv_d_c), 0)
'eq 3.21
philia.append Inv_s_c_b = @recode(Inv_d_c > 0, l_s_c_b + PnL_c * ret_c * (Inv_d_c_b / Inv_d_c), 0) 
'eq 3.22
philia.append Inv_s_c = Inv_s_c_g + Inv_s_c_b


'## FINANCING (LIABILITIES)

'Financial structure
'eq 3.30
philia.append l_d_c_g  = @recode(Inv_d_c = 0, 0, @recode(Inv_d_c_g    - PnL_c * ret_c  * (Inv_d_c_g  / Inv_d_c) > 0, Inv_d_c_g - PnL_c * ret_c  * (Inv_d_c_g  / Inv_d_c), 0))
'eq 3.31
philia.append l_d_c_b = @recode(Inv_d_c = 0, 0, @recode(Inv_d_c_b - PnL_c * ret_c * (Inv_d_c_b / Inv_d_c) > 0, Inv_d_c_b - PnL_c * ret_c * (Inv_d_c_b / Inv_d_c), 0))
'eq 3.32
philia.append l_d_c = l_d_c_g + l_d_c_b


'Financial liabilities
'eq 3.33
philia.append l_s_c = l_s_c_b + l_s_c_g
'eq 3.34
philia.append stock_L_s_c_g = stock_L_s_c_g(-1) + l_s_c_g 
'eq 3.35
philia.append stock_L_s_c_b = stock_L_s_c_b(-1) + l_s_c_b
'eq 3.36
philia.append stock_L_s_c = stock_L_s_c_b + stock_L_s_c_g


