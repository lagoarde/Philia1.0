'LISTED CORPORATIONS

'eq 4.01
philia.append PnL_k = (1 - r_exp_k) * (1 - teta_k) * (C_k + Inv_s_k + G_k - WB_k - DA_k - (i_l_k_b * l_s_k_b(-1) + i_l_k_g * l_s_k_g(-1) + i_cb_b * cb_s_k_b(-1) + i_cb_g * cb_s_k_g(-1) + i_cp_b * cp_s_k_b(-1) + i_cp_g * cp_s_k_b(-1)))
'eq 4.02
philia.append div_k = div_d 
'eq 4.03
philia.append div_d = (r_exp_k / (1 - r_exp_k) ) * PnL_k 
'eq 4.04
philia.append RE_k = PnL_k


'## INVESTMENT (ASSETS)

'Total investment demand
'eq 4.10
philia.append K_k = K_k_b + k_k_g
'eq 4.11
philia.append K_k_b = K_k_b(-1) - DA_k_b + Inv_s_k_b
'eq 4.12
philia.append K_k_g = K_k_g(-1) - DA_k_g + Inv_s_k_g
'eq 4.13
philia.append DA_k = DA_k_b + DA_k_g
'eq 4.14
philia.append DA_k_b = lambda * K_k_b(-1)
'eq 4.15
philia.append DA_k_g = lambda * K_k_g(-1)
'eq 4.16
philia.append K_k_Tgt  = kappa_k * Y(-1)
'eq 4.17
philia.append Inv_d_k  = @recode(nu_k  * (K_k_Tgt - K_k(-1)) + DA_k > 0, nu_k * (K_k_Tgt - K_k(-1)) + DA_k, 0)


'Green structure of investment demand
'eq 4.18
philia.append Inv_d_k_g  = @recode(omega1_k * Inv_d_k *(1 + ad_ecs * ecosystemic_shock * dmg_ecs(-1) + d(Inv_d_p_g) / Inv_d_p_g(-1) + omega2_k * (i_l_k_b(-1) - i_l_k_g(-1))) < Inv_d_k, omega1_k * Inv_d_k * (1 + ad_ecs * ecosystemic_shock * dmg_ecs(-1) + d(Inv_d_p_g) / Inv_d_p_g(-1) + omega2_k * (i_l_k_b(-1) - i_l_k_g(-1))), Inv_d_k)
'eq 4.19
philia.append Inv_d_k_b =@recode(Inv_d_k - Inv_d_k_g > 0, Inv_d_k - Inv_d_k_g, 0)


'Investment spending
'eq 4.20
philia.append Inv_s_k_g = @recode(Inv_d_k > 0, f_s_k_g + RE_k * (Inv_d_k_g / Inv_d_k) + e_d_k * (Inv_d_k_g / Inv_d_k), 0)
'eq 4.21
philia.append Inv_s_k_b = @recode(Inv_d_k > 0, f_s_k_b + RE_k * (Inv_d_k_b / Inv_d_k) + e_d_k * (Inv_d_k_b / Inv_d_k), 0)
'eq 4.22
philia.append Inv_s_k = Inv_s_k_g + Inv_s_k_b


'## FINANCING (LIABILITIES)

'Investment financing
'eq 4.30
philia.append f_d_k = f_d_k_g + f_d_k_b
philia.append f_s_k = f_s_k_b + f_s_k_g
'eq 4.31
philia.append f_d_k_g  = @recode(Inv_d_k = 0, 0, @recode(Inv_d_k_g - RE_k * (Inv_d_k_g  / Inv_d_k) > 0, Inv_d_k_g - RE_k * (Inv_d_k_g  / Inv_d_k), 0))
'eq 4.32
philia.append f_d_k_b = @recode(Inv_d_k = 0, 0, @recode(Inv_d_k_b - RE_k * (Inv_d_k_b / Inv_d_k) > 0, Inv_d_k_b - RE_k * (Inv_d_k_b / Inv_d_k), 0))
'eq 4.33
philia.append e_s_k=@recode(f_d_k - f_s_k > 0, f_d_k - f_s_k, 0)


'Financial liabilities
'eq 4.34
philia.append l_s_k_b = l_d_k_b
'eq 4.35
philia.append l_s_k_g = l_d_k_g
'eq 4.36
philia.append cb_s_k_b = cb_d_k_b
'eq 4.37
philia.append cb_s_k_g = cb_d_k_g
'eq 4.38
philia.append cp_s_k_b = cp_d_k_b
'eq 4.39
philia.append cp_s_k_g = cp_d_k_g
'eq 4.40
philia.append stock_L_s_k = stock_L_s_k_b + stock_L_s_k_g
'eq 4.41
philia.append stock_L_s_k_b = stock_L_s_k_b(-1) + l_s_k_b
'eq 4.42
philia.append stock_L_s_k_g = stock_L_s_k_g(-1) + l_s_k_g
'eq 4.43
philia.append stock_CB_s_k = stock_CB_s_k_b + stock_CB_s_k_g
'eq 4.44
philia.append stock_CB_s_k_b = stock_CB_s_k_b(-1) + cb_s_k_b
'eq 4.45
philia.append stock_CB_s_k_g = stock_CB_s_k_g(-1) + cb_s_k_g
'eq 4.46
philia.append stock_CP_s_k = stock_CP_s_k_b + stock_CP_s_k_g
'eq 4.47
philia.append stock_CP_s_k_b = stock_CP_s_k_b(-1) + cp_s_k_b
'eq 4.48
philia.append stock_CP_s_k_g = stock_CP_s_k_g(-1) + cp_s_k_g
'eq 4.49
philia.append stock_E_s_k = stock_E_s_k(-1) + e_d_k
'eq 4.50
philia.append stock_D_s_k = stock_D_s_k_b + stock_D_s_k_g
'eq 4.51
philia.append stock_D_s_k_b = stock_L_s_k_b + stock_CB_s_k_b + stock_CP_s_k_b
'eq 4.52
philia.append stock_D_s_k_g = stock_L_s_k_g + stock_CB_s_k_g +  stock_CP_s_k_g


philia.append stock_L_s = stock_L_s_c + stock_L_s_k 'AUXILIARY


