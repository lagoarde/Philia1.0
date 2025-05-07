'CENTRAL BANK

'Income statement
'eq 7.01
philia.append PnL_cbk = income_cbk - cost_cbk
philia.append income_cbk = i_l_c_b * stock_QE_l_c_b(-1) + i_l_c_g * stock_QE_l_c_g(-1) + i_l_k_b * stock_QE_l_k_b(-1) + i_l_k_g * stock_QE_l_k_g(-1) + i_cb_b(-1) * stock_QE_cb_b(-1) + i_cb_g(-1) * stock_QE_cb_g(-1) + i_cp_b(-1) * stock_QE_cp_b(-1) + i_cp_g(-1) * stock_QE_cp_g(-1) + i_cbk * stock_A_s_bk(-1)
philia.append cost_cbk = i_mr * stock_H_d_mr(-1) + i_df * stock_H_xs(-1) 


'## INVESTMENT (ASSETS)

'Quantitative easing operations
'eq 7.10
philia.append qe_l_c_b = d(qe_s_Tgt) * (stock_L_s_c_b(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))
'eq 7.11
philia.append qe_l_c_g = d(qe_s_Tgt) * (stock_L_s_c_g(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))
'eq 7.12
philia.append qe_l_k_b = d(qe_s_Tgt) * (stock_L_s_k_b(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))
'eq 7.13
philia.append qe_l_k_g = d(qe_s_Tgt) * (stock_L_s_k_g(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))
'eq 7.14
philia.append qe_cb_b = d(qe_s_Tgt) * (stock_CB_s_k_b(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))
'eq 7.15
philia.append qe_cb_g = d(qe_s_Tgt) * (stock_CB_s_k_g(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))
'eq 7.16
philia.append qe_cp_b = d(qe_s_Tgt) * (stock_CP_s_k_b(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))
'eq 7.17
philia.append qe_cp_g = d(qe_s_Tgt) * (stock_CP_s_k_g(-1) / (stock_F_s_k(-1) + stock_L_s_c(-1)))

'eq 7.18
philia.append qe_l = qe_l_b + qe_l_g
'eq 7.19
philia.append qe_l_b = qe_l_k_b + qe_l_c_b
'eq 7.20
philia.append qe_l_g = qe_l_k_g + qe_l_c_g
'eq 7.21
philia.append qe_cb = qe_cb_b + qe_cb_g
'eq 7.22
philia.append qe_cp = qe_cp_b + qe_cp_g

'eq 7.23
philia.append qe_gb = @recode(gb_s - gb_d_bk - gb_d_if > 0, gb_s - gb_d_bk - gb_d_if, 0)
'eq 7.24
philia.append stock_GB_d_cbk = stock_GB_d_cbk(-1) + qe_gb

'eq 7.25
philia.append stock_QE_l_k_b = stock_QE_l_k_b(-1) + qe_l_k_b
'eq 7.26
philia.append stock_QE_l_k_g = stock_QE_l_k_g(-1) + qe_l_k_g
'eq 7.27
philia.append stock_QE_l_c_b = stock_QE_l_c_b(-1) + qe_l_c_b
'eq 7.28
philia.append stock_QE_l_c_g = stock_QE_l_c_g(-1) + qe_l_c_g
'eq 7.29
philia.append stock_QE_cb_b = stock_QE_cb_b(-1) + qe_cb_b
'eq 7.30
philia.append stock_QE_cb_g = stock_QE_cb_g(-1) + qe_cb_g
'eq 7.31
philia.append stock_QE_cp_b = stock_QE_cp_b(-1) + qe_cp_b
'eq 7.32
philia.append stock_QE_cp_g = stock_QE_cp_g(-1) + qe_cp_g
'eq 7.33
philia.append stock_QE_l = stock_QE_l_c_b + stock_QE_l_c_g + stock_QE_l_k_b + stock_QE_l_k_g
'eq 7.34
philia.append stock_QE_cb = stock_QE_cb_b + stock_QE_cb_g
'eq 7.35
philia.append stock_QE_cp = stock_QE_cp_b + stock_QE_cp_g


'High powered money 
'eq 7.36
philia.append h_d = d(stock_A_s_bk) + d(QE_s_Tgt) + d(stock_H_d_h)  + qe_gb
'eq 7.37b
philia.append stock_M_s_h = M_s_h
'eq 7.37
philia.append stock_H_d = stock_H_d(-1) + h_d


'## FINANCING (LIABILITIES)

'Reserve liabilities
'eq 7.40
philia.append stock_H_s_qe = QE_s_Tgt
'eq 7.41
philia.append stock_H_s_gb = stock_GB_d_cbk
'eq 7.42
philia.append stock_H_s = stock_A_s_bk + stock_H_s_qe + stock_H_s_gb + h_s_h 


'Equity
'eq 7.50
philia.append E_cbk = E_cbk(-1) + e_cbk_s
'eq 7.51
philia.append e_cbk_s = d(stock_A_s_bk) + d(QE_s_Tgt) + qe_gb  - (h_d - d(stock_H_d_h))


