'PUBLIC SECTOR

'Public budget balance
'eq 9.01
philia.append BB_p = T + E_cbk_s + PnL_cbk - (G + i_gb * gb_s(-1))

'Public sector firms
'eq 9.02
philia.append PnL_p  = C_p  - WB_p + Inv_s_p - DA_p
'eq 9.03
philia.append RE_p  = G_p
'eq 9.04
philia.append Div_p  = PnL_p - RE_p


'## INVESTMENT (ASSETS)

'The government’s budget constraint
'eq 9.10
philia.append G = G_start + G_p
'''eq 9.11
philia.append G_c = mu_c * G
'eq 9.12
philia.append G_k = G - G_c
'eq 9.13
philia.append G_p  = Inv_s_p - DA_p


'Public sector firms
'eq 9.14
philia.append K_p_Tgt = (1 + kappa1_p) * K_p(-1)
'eq 9.15
philia.append K_p = K_p(-1) + Inv_s_p - DA_p
'eq 9.16
philia.append Inv_d_p = K_p_Tgt - K_p + DA_p
'eq 9.17
philia.append DA_p = lambda * K_p(-1)
'eq 9.18
philia.append Inv_d_p_g = kappa2_p * Inv_d_p
'eq 9.19
philia.append Inv_d_p_b = Inv_s_p - Inv_d_p_g
'eq 9.20
philia.append Inv_s_p = Inv_d_p


'## FINANCING (LIABILITIES)

'Tax payments
'eq 9.30
philia.append T = T_w +T_r + T_c + T_k
'eq 9.31
philia.append T_w = teta_w * (WB + (1 - ret_c) * PnL_c + i_sa * M_d_w(-1))
'eq 9.32
philia.append T_r = teta_r * (Div_if(-1) + i_sa * M_d_r(-1))
'eq 9.33
philia.append T_c = (teta_c / (1 - teta_c)) * PnL_c
'eq 9.34
philia.append T_k = (teta_k / ((1 - teta_k) * (1 - r_exp_k))) * PnL_k


'Treasury issues
'eq 9.35
philia.append gb_s = @recode(BB_p + PnL_p < 0, - (BB_p + PnL_p), 0)
'eq 9.36
philia.append stock_GB_s = stock_GB_s(-1) + gb_s


