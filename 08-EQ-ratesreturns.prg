'RATES RETURNS 

'Money market rates
'eq 8.01
philia.append i_cbk = i_cbk_spread + i_df
'eq 8.02
philia.append i_df = 0.0001
'eq 8.03
philia.append i_mr = i_df - i_mr_spread


'Bank lending rates
'eq 8.04
philia.append greenium = sigma0 * (gamma_ecs * ecosystemic_shock * dmg_ecs(-1))
'eq 8.05
philia.append i_cp_b = i_cbk + lr_k_b + sigma1 + greenium
'eq 8.06
philia.append i_cp_g = i_cbk + lr_k_g + sigma1 - greenium
'eq 8.07
philia.append i_l_k_b = i_cp_b + sigma2
'eq 8.08
philia.append i_l_k_g = i_cp_g + sigma2
'eq 8.09
philia.append i_cb_b = i_l_k_b
'eq 8.10
philia.append i_cb_g = i_l_k_g
'eq 8.11
philia.append i_l_c_b = i_l_k_b + (LR_c_b - LR_k_b)
'eq 8.12
philia.append i_l_c_g = i_l_k_g + (LR_c_g - LR_k_g)
'eq 8.13
philia.append i_sa = i_sa(-1) + sigma3 * d(i_cbk)
'eq 8.14
philia.append i_gb = i_cbk + sigma1


'Total returns
'eq 8.20
philia.append r_cb_b = i_cb_b + CG_cb_b / stock_CB_s_k_b(-1)
'eq 8.21
philia.append r_cb_g = i_cb_g + CG_cb_g / stock_CB_s_k_g(-1)
'eq 8.22
philia.append r_l_k_b = i_l_k_b + CG_l_k_b / stock_L_s_k_b(-1)
'eq 8.23
philia.append r_l_k_g = i_l_k_g + CG_l_k_g / stock_L_s_k_g(-1)
'eq 8.24
philia.append r_l_c_b = i_l_c_b + CG_l_c_b / stock_L_s_c_b(-1)
'eq 8.25
philia.append r_l_c_g = i_l_c_g + CG_l_c_g / stock_L_s_c_g(-1)
'eq 8.26
philia.append r_gb = i_gb + CG_gb / stock_GB_s(-1)
'eq 8.27
philia.append r_if = @recode(e_s_k > 0, 0.01 * (Div_if / S_if(-1)), 0)


'Realized capital gains 
'eq 8.28
philia.append CG_cb_b = phi_b * stock_CB_s_k_b(-1)
'eq 8.29
philia.append CG_cb_g = phi_g * stock_CB_s_k_g(-1)
'eq 8.30
philia.append CG_l_k_b = phi_b * stock_L_s_k_b(-1)
'eq 8.31
philia.append CG_l_k_g = phi_g * stock_L_s_k_g(-1)
'eq 8.32
philia.append CG_l_c_b = phi_b * stock_L_s_c_b(-1)
'eq 8.33
philia.append CG_l_c_g = phi_g * stock_L_s_c_g(-1)
'eq 8.34
philia.append CG_gb = phi_bg * d(p_gb) * stock_GB_s(-1)
'eq 8.35
philia.append CG_e = d(p_e) * stock_E_s_k(-1)


'Expected capital gains
'eq 8.36
philia.append CG_exp_cb_b = CG_cb_b(-1) + psi_ecg * (CG_cb_b(-1) - CG_exp_cb_b(-1))
'eq 8.37
philia.append CG_exp_cb_g = CG_cb_g(-1) + psi_ecg * (CG_cb_g(-1) - CG_exp_cb_g(-1))
'eq 8.38
philia.append CG_exp_l_k_b = CG_l_k_b(-1) + psi_ecg * (CG_l_k_b(-1) - CG_exp_l_k_b(-1))
'eq 8.39
philia.append CG_exp_l_k_g = CG_l_k_g(-1) + psi_ecg * (CG_l_k_g(-1) - CG_exp_l_k_g(-1))
'eq 8.40
philia.append CG_exp_l_c_b = CG_l_c_b(-1) + psi_ecg * (CG_l_c_b(-1) - CG_exp_l_c_b(-1))
'eq 8.41
philia.append CG_exp_l_c_g = CG_l_c_g(-1) + psi_ecg * (CG_l_c_g(-1) - CG_exp_l_c_g(-1))
'eq 8.42
philia.append CG_exp_gb = CG_gb(-1) + psi_ecg * (CG_gb(-1) - CG_exp_gb(-1))
'eq 8.43
philia.append CG_exp_e = CG_e(-1) + psi_ecg * (CG_e(-1) - CG_exp_e(-1))

 
philia.append totalKgain = CG_gb + CG_cb_b + CG_cb_g + CG_l_k_b + CG_l_k_g + CG_l_c_b + CG_l_c_g
philia.append cumtotalKgain = cumtotalKgain(-1) + totalKgain







' BANK REALIZED CAPITAL GAINS WHEN QE IS ACTIVE

philia.append CG_cb_b_qe = phi_b * stock_CB_d_k_b(-1)
philia.append CG_cb_g_qe = phi_g * stock_CB_d_k_g(-1)
philia.append CG_l_k_b_qe = phi_b * stock_L_d_k_b(-1)
philia.append CG_l_k_g_qe = phi_g * stock_L_d_k_g(-1)
philia.append CG_l_c_b_qe = phi_b * stock_L_d_c_b(-1)
philia.append CG_l_c_g_qe = phi_g * stock_L_d_c_g(-1)

philia.append totalKgain_qe = CG_gb + CG_cb_b_qe + CG_cb_g_qe + CG_l_k_b_qe + CG_l_k_g_qe + CG_l_c_b_qe + CG_l_c_g_qe
philia.append cumtotalKgain_qe = cumtotalKgain_qe(-1) + totalKgain_qe


'CENTRAL BANK REALIZED CAPITAL GAINS WITHOUT QE

philia.append CG_cbk_cb_b_qe = phi_b * stock_qe_cb_b(-1)
philia.append CG_cbk_cb_g_qe = phi_g * stock_qe_cb_g(-1)
philia.append CG_cbk_l_k_b_qe = phi_b * stock_qe_l_k_b(-1)
philia.append CG_cbk_l_k_g_qe = phi_g * stock_qe_l_k_g(-1)
philia.append CG_cbk_l_c_b_qe = phi_b * stock_qe_l_c_b(-1)
philia.append CG_cbk_l_c_g_qe = phi_g * stock_qe_l_c_g(-1)

philia.append totalKgain_cbk_qe = CG_cbk_cb_b_qe + CG_cbk_cb_g_qe + CG_cbk_l_k_b_qe + CG_cbk_l_k_g_qe + CG_cbk_l_c_b_qe + CG_cbk_l_c_g_qe 
philia.append cumtotalKgain_cbk_qe = cumtotalKgain_cbk_qe(-1) + totalKgain_cbk_qe


'## STOCK MARKET

philia.append p_l_c_b = @recode(p_l_c_b(-1) * (1 + phi_bg) > 0, p_l_c_b(-1) * (1 + phi_bg), 0)
philia.append p_l_c_g=1

philia.append p_l_k_b = @recode(p_l_k_b(-1) * (1 + phi_bg) > 0, p_l_k_b(-1) * (1 + phi_bg), 0)
philia.append p_l_k_g=1

philia.append p_cb_b = @recode(p_cb_b(-1) * (1 + phi_bg) > 0, p_cb_b(-1) * (1 + phi_bg), 0)
philia.append p_cb_g=1

philia.append p_cp_k_b = @recode(p_cp_k_b(-1) * (1 + phi_bg) > 0, p_cp_k_b(-1) * (1 + phi_bg), 0)
philia.append p_cp_k_g=1


philia.append p_gb=1
philia.append p_e=1


philia.append i_l_c_b_real = (1 + i_l_c_b) / (1 + pi) - 1
philia.append i_l_c_g_real = (1 + i_l_c_g) / (1 + pi) - 1
philia.append i_l_k_b_real = (1 + i_l_k_b) / (1 + pi) - 1
philia.append i_l_k_g_real = (1 + i_l_k_g) / (1 + pi) - 1
philia.append i_cb_b_real = (1 + i_cb_b) / (1 + pi) - 1
philia.append i_cb_g_real = (1 + i_cb_g) / (1 + pi) - 1
philia.append i_cp_b_real = (1 + i_cp_b) / (1 + pi) - 1
philia.append i_cp_g_real =(1 + i_cp_g) / (1 + pi) - 1
philia.append i_gb_real = (1 + i_gb) / (1 + pi) - 1
philia.append i_sa_real = (1 + i_sa) / (1 + pi) - 1


