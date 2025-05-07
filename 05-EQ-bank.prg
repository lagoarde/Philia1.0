'BANKING SECTOR

'Income statement 
'eq 5.01
philia.append PnL_bk = i_l_c_b * l_d_c_b(-1) + i_l_c_g * l_d_c_g(-1) + i_l_k_b * l_d_k_b(-1) + i_l_k_g * l_d_k_g(-1) + i_cb_b * CB_d_k_b(-1) + i_cb_g * CB_d_k_g(-1) + i_cp_b * CP_d_k_b(-1) + i_cp_b * CP_d_k_g(-1) + i_gb * d(stock_GB_d_bk(-1)) + i_mr * d(stock_H_d_mr(-1)) + i_df * d(stock_H_xs(-1)) - i_sa * d(stock_M_s_h(-1)) - i_cbk * d(stock_A_s_bk(-1))
'eq 5.02
philia.append Div_bk = @recode(PnL_bk > 0, PnL_bk, 0)


'## INVESTMENT (ASSETS)

'Quantitative easing
'eq 5.10
philia.append stock_L_d_c_b = @recode(stock_L_d(-1) > 0, stock_L_s_c_b - (stock_L_s_c_b(-1) / stock_L_s(-1)) * qe_l(-1), 0)
'eq 5.11
philia.append stock_L_d_c_g = @recode(stock_L_d(-1) > 0, stock_L_s_c_g - (stock_L_s_c_g(-1) / stock_L_s(-1)) * qe_l(-1), 0)
'eq 5.12
philia.append stock_L_d_k_b = @recode(stock_L_d(-1) > 0, stock_L_s_k_b - (stock_L_s_k_b(-1) / stock_L_s(-1)) * qe_l(-1), 0)
'eq 5.13
philia.append stock_L_d_k_g = @recode (stock_L_d(-1) > 0, stock_L_s_k_g - (stock_L_s_k_g(-1) / stock_L_s(-1)) * qe_l(-1), 0)
'eq 5.14
philia.append stock_L_s_b = stock_L_s_k_b + stock_L_s_c_b
'eq 5.15
philia.append stock_L_s_g = stock_L_s_k_g + stock_L_s_c_g
'eq 5.16
philia.append stock_L_d = stock_L_d_b + stock_L_d_g
'eq 5.17
philia.append stock_CB_d_k_b = @recode(stock_CB_s_k(-1) > 0, stock_CB_s_k_b - (stock_CB_s_k_b(-1) / stock_CB_s_k(-1)) * qe_cb(-1), 0)
'eq 5.18
philia.append stock_CB_d_k_g = @recode(stock_CB_s_k(-1) > 0, stock_CB_s_k_g - (stock_CB_s_k_g(-1) / stock_CB_s_k(-1)) * qe_cb(-1), 0)
'eq 5.19
philia.append stock_CB_d_k = stock_CB_d_k_b + stock_CB_d_k_g
'eq 5.20
philia.append stock_CP_d_k_b = @recode(stock_CP_s_k(-1) > 0, stock_CP_s_k_b - (stock_CP_s_k_b(-1) / stock_CP_s_k(-1)) * qe_cp(-1), 0)
'eq 5.21
philia.append stock_CP_d_k_g = @recode(stock_CP_s_k(-1) > 0 , stock_CP_s_k_g - (stock_CP_s_k_g(-1) / stock_CP_s_k(-1)) * qe_cp(-1), 0)
'eq 5.22
philia.append stock_CP_d_k = stock_CP_d_k_b + stock_CP_d_k_g
'eq 5.23
philia.append stock_D_s = stock_L_s + stock_CB_s_k + stock_CP_s_k
philia.append stock_D_d_g = stock_L_d_g + stock_CB_d_k_g + stock_CP_d_k_g 'auxiliary
philia.append stock_D_d_b = stock_L_d_b + stock_CB_d_k_b + stock_CP_d_k_b 'auxiliary
'eq 5.24
philia.append stock_F_s_k = stock_L_s_k_b + stock_L_s_k_g + stock_CB_s_k_b + stock_CB_s_k_g + stock_CP_s_k_b + stock_CP_s_k_g


'Debt structure
'eq 5.25
philia.append cb_d_k_b = chi10 * f_s_k_b + (chi11 * r_cb_b - chi12 * r_l_k_b - chi13 * i_cp_b) * f_s_k_b
philia.append l_d_k_b = chi20 * f_s_k_b + (- chi21 * r_cb_b + chi22 * r_l_k_b - chi23 * i_cp_b) * f_s_k_b
'eq 5.26
philia.append cb_d_k_g = chi10 * f_s_k_g + (chi11 * r_cb_g - chi12 * r_l_k_g - chi13 * i_cp_g) * f_s_k_g
philia.append l_d_k_g = chi20 * f_s_k_g + (- chi21 * r_cb_g + chi22 * r_l_k_g - chi23 * i_cp_g) * f_s_k_g
'eq 5.27
philia.append cp_d_k_b = f_s_k_b - cb_d_k_b - l_d_k_b
'eq 5.28
philia.append cp_d_k_g = f_s_k_g - cb_d_k_g - l_d_k_g
'eq 5.29
philia.append l_d_k = l_d_k_g + l_d_k_b
'eq 5.30
philia.append cb_d_k = cb_d_k_g + cb_d_k_b
'eq 5.31
philia.append cp_d_k = cp_d_k_g + cp_d_k_b


'Banking credit
'eq 5.32
philia.append l_s_c_g = @recode(stock_L_s_c(-1) < (1/gamma_lr) * K_c(-1), @recode(l_d_c_g * (1 - LR_c_g(-1)) > 0, l_d_c_g * (1 - LR_c_g(-1)), 0), 0)
'eq 5.33
philia.append l_s_c_b = @recode(stock_L_s_c(-1) < (1/gamma_lr) * K_c(-1), @recode(l_d_c_b * (1 - LR_c_b(-1)) > 0, l_d_c_b * (1 - LR_c_b(-1)), 0), 0)
'eq 5.34
philia.append f_s_k_g = @recode(f_d_k_g * (1 - LR_k_g(-1)) > 0, f_d_k_g * (1 - LR_k_g(-1)), 0)
'eq 5.35
philia.append f_s_k_b = @recode(f_d_k_b * (1 - LR_k_b(-1)) > 0, f_d_k_b * (1 - LR_k_b(-1)), 0)
'eq 5.36
philia.append LR_c_g = shock_risk_c * @recode(a_lr * (stock_L_s_c / K_c) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk > 0, a_lr * (stock_L_s_c / K_c) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk, 0)
'eq 5.37
philia.append LR_k_g = shock_risk_k * @recode(a_lr * (stock_D_s_K / K_k) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk < 0.7, a_lr *(stock_D_s_K / K_k) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk, 0.7)
'eq 5.38
philia.append LR_c_b = @recode(a_lr * (stock_L_s_c / K_c) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk > 0, a_lr * (stock_L_s_c / K_c) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk, 0) * (1 + psi_lr * ecosystemic_shock * dmg_ecs(-1))
'eq 5.39
philia.append LR_k_b = @recode(a_lr * (stock_D_s_K / K_k) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk < 0.7, a_lr * (stock_D_s_K / K_k) - b_lr * (d(y) / y(-1)) + c_lr * i_cbk, 0.7) * (1 + psi_lr * ecosystemic_shock * dmg_ecs(-1))


'Inside money creation
'eq 5.40
philia.append m_bk = l_s_c + f_s_k
'eq 5.41
philia.append m_bk_g = l_s_c_g + f_s_k_g 
'eq 5.42
philia.append m_bk_b = l_s_c_b + f_s_k_b
'eq 5.43
philia.append stock_M_bk = stock_M_bk(-1) + m_bk


'## FINANCING (LIABILITIES)

'Cash and deposit liabilities
'eq 5.50
philia.append H_s_h = stock_H_d_h
'eq 5.51
philia.append M_s_h = M_d_h + stock_M_d_if


'Refinancing operations
'eq 5.52
philia.append stock_H_d_mr = rho_mr * stock_M_s_h(-1)
'eq 5.53
philia.append stock_A_d_bk = @recode(stock_H_d_mr - stock_H_d_qe  > 0, stock_H_d_mr - stock_H_d_qe, 0)
'eq 5.54
philia.append stock_A_s_bk = stock_A_d_bk
'eq 5.55
philia.append stock_H_d_qe = stock_H_s_qe
'eq 5.56
philia.append stock_H_xs = stock_H_d - stock_H_d_mr - stock_H_d_h 


'Banks’ balance sheet
'eq 5.58
philia.append stock_E_bk_a = TA_bk_a - TL_bk
'eq 5.59
philia.append stock_E_bk_e = TA_bk_e - TL_bk
philia.append e_s_bk = - ( d(f_s_k + l_s_c) + gb_d_bk + (h_d - d(QE_s_Tgt) - d(stock_H_d_h)) - d(stock_A_s_bk) - d(stock_M_s_h) )
'eq 5.60
philia.append TA_bk_a = stock_H_d_mr - stock_H_d_h + p_gb * stock_GB_d_bk + p_l_k_b * stock_L_s_k_b + p_l_k_g * stock_L_s_k_g + p_l_c_b * stock_L_s_c_b + p_l_c_g * stock_L_s_c_g + p_cb_b * stock_CB_s_k_b + p_cb_g * stock_CB_s_k_g + p_cp_k_b * stock_CP_s_k_b + p_cp_k_g * stock_CP_s_k_g
'eq 5.61
philia.append TA_bk_e = stock_H_d -  stock_H_d_h + p_gb * stock_GB_d_bk + p_l_k_b * stock_L_d_k_b + p_l_k_g * stock_L_d_k_g + p_l_c_b * stock_L_d_c_b + p_l_c_g * stock_L_d_c_g + p_cb_b * stock_CB_d_k_b + p_cb_g * stock_CB_d_k_g + p_cp_k_b * stock_CP_d_k_b + p_cp_k_g * stock_CP_d_k_g
'eq 5.62
philia.append TL_bk = stock_A_s_bk + stock_M_s_h


'## REGULATION

'Capital adequacy ratio (CAR)
'eq 5.70
philia.append RWA_e = RWA_a - QE_Tgt * eta
'eq 5.71
philia.append RWA_a = eta * (p_l_k_b * stock_l_d_k_b + p_l_k_g * stock_l_d_k_g + p_l_c_b * stock_l_d_c_b + p_l_c_g * stock_l_d_c_g + p_cb_b * stock_CB_d_k_b + p_cb_g * stock_CB_d_k_g + p_cp_k_b * stock_cp_d_k_b + p_cp_k_g * stock_cp_d_k_g)
'eq 5.72
philia.append QE_s_Tgt = QE_s_Tgt (-1) + QE_Tgt
philia.append QE_Tgt = shock_qe * @recode(RWA_a(-1) < RWA_max(-1), 0, (RWA_a(-1) - RWA_max(-1)) / eta)
'eq 5.73
philia.append RWA_max = stock_E_bk_e(-1) / CAR_Tgt
'eq 5.74
philia.append CAR_a = stock_E_bk_a / RWA_a
'eq 5.75
philia.append CAR_e = stock_E_bk_e(-1) / RWA_e


'Liquidity ratio (LCR)
'eq 5.77
philia.append stock_GB_d_bk_Tgt = @recode(zeta_h * stock_M_s_h  * LCR_Tgt  - stock_H_d > 0, zeta_h * stock_M_s_h  * LCR_Tgt  - stock_H_d , 0)
'eq 5.78
philia.append gb_d_bk_Tgt = stock_GB_d_bk_Tgt - stock_GB_d_bk(-1) 
'eq 5.79
philia.append LCR_a = (stock_GB_d_bk(-1) + (stock_H_d - stock_H_d_h)) / (zeta_h * stock_M_s_h)
'eq 5.80
philia.append zeta_h = @recode((stock_GB_d_bk(-1) + stock_H_d(-1) - stock_H_d_h(-1)) / (stock_M_s_h(-1)) * (1 + gamma10) > 0, (stock_GB_d_bk(-1) + stock_H_d(-1) - stock_H_d_h(-1)) / (stock_M_s_h(-1)) * (1 + gamma10), (stock_GB_d_bk(-1) + stock_H_d(-1)) / (stock_M_s_h(-1)) * (1 + gamma10))
'eq 5.81
philia.append LCR_e = (stock_GB_d_bk + (stock_H_d - stock_H_d_h)) / (zeta_h * stock_M_s_h)
'eq 5.82
philia.append stock_GB_d_bk = @recode(stock_GB_d_bk(-1) + gb_d_bk_Tgt(-1) < stock_GB_s(-1), stock_GB_d_bk(-1) + gb_d_bk_Tgt(-1), stock_GB_s(-1))
philia.append gb_d_bk = d(stock_GB_d_bk)


'Banks’ balance sheet
philia.append BRA_a = stock_L_s_k_b + stock_L_s_k_g + stock_L_s_c_b + stock_L_s_c_g + stock_CB_s_k_b + stock_CB_s_k_g + stock_CP_s_k_b  + stock_CP_s_k_g 'Stocks of risky assets pre QE
philia.append BRA_e = stock_L_d_k_b + stock_L_d_k_g +  stock_L_d_c_b + stock_L_d_c_g + stock_CB_d_k_b + stock_CB_d_k_g + stock_CP_d_k_b  + stock_CP_d_k_g  'Stocks of risky assets post QE


