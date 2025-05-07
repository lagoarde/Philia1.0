'RESILIENCE ULANOWICZ

'eq 11.01
philia.append T_h_w_c = 0.20 * C_w
'eq 11.02
philia.append T_h_w_k = C_w - T_h_w_c
'eq 11.03
philia.append T_h_r_c = 0.20 * C_r
'eq 11.04
philia.append T_h_r_k = C_r - T_h_r_c
'eq 11.05
philia.append T_h_r_if = S_d_r - S_d_r(-1)
'eq 11.06
philia.append T_h_w_dot = T_h_w_c + T_h_w_k
'eq 11.07
philia.append T_h_r_dot = T_h_r_c + T_h_r_k  + T_h_r_if

'eq 11.10
philia.append T_c_h_w = WB_c + (1 - ret_c) * PnL_c
'eq 11.11
philia.append T_c_bk = stock_L_s_c_g * i_l_c_g + stock_L_s_c_b * i_l_c_b
'eq 11.12
philia.append T_c_dot = T_c_h_w + T_c_bk

'eq 11.20
philia.append T_k_h_w = WB_k
'eq 11.21
philia.append T_k_bk = i_l_k_b * stock_L_d_k_b(-1) + i_l_k_g * stock_L_d_k_g(-1) + i_cp_b * stock_CP_d_k_b(-1) + i_cp_g * stock_CP_d_k_g(-1) + i_cb_g * stock_CB_d_k_g(-1) + i_cb_b * stock_CB_d_k_b(-1)
'eq 11.22
philia.append T_k_if = div_if
'eq 11.23
philia.append T_k_dot = T_k_h_w + T_k_bk

'eq 11.30
philia.append T_bk_h_w = i_sa * M_d_w
'eq 11.31
philia.append T_bk_h_r = i_sa * M_d_r
'eq 11.32
philia.append T_bk_c = l_s_c
'eq 11.33
philia.append T_bk_k = f_s_k
'eq 11.34
philia.append T_bk_if = Div_bk
'eq 11.35
philia.append T_bk_dot = T_bk_h_w + T_bk_h_r + T_bk_c + T_bk_k

'eq 11.40
philia.append T_if_h_r = PnL_if 
'eq 11.41
philia.append T_if_k = e_s_k
'eq 11.42
philia.append T_if_dot = T_if_h_r + T_if_k

'eq 11.50
philia.append T_dot_h_w = T_c_h_w + T_k_h_w + T_bk_h_w
'eq 11.51
philia.append T_dot_h_r = T_bk_h_r + T_if_h_r
'eq 11.52
philia.append T_dot_c = T_h_w_c + T_h_r_c + T_bk_c
'eq 11.53
philia.append T_dot_k =  T_h_w_k + T_h_r_k + T_bk_k
'eq 11.54
philia.append T_dot_bk = T_c_bk + T_k_bk
'eq 11.55
philia.append T_dot_if = T_h_r_if + T_k_if + T_bk_if
'eq 11.56
philia.append T_dot_dot = T_h_w_dot + T_h_r_dot + T_c_dot + T_k_dot + T_bk_dot + T_if_dot + T_dot_h_w + T_dot_h_r + T_dot_c + T_dot_k + T_dot_bk + T_dot_if
philia.append T_dot_dot_f = @recode(T_dot_dot = na, T_dot_dot(-1), T_dot_dot) 'auxiliary
 
philia.append log_01 = T_dot_dot_f * (T_h_w_c / T_dot_dot_f) * @recode( T_h_w_c / T_dot_dot_f>0, log( T_h_w_c / T_dot_dot_f), 0) 'auxiliary
philia.append log_02 = T_dot_dot_f * (T_h_w_k / T_dot_dot_f) * @recode(T_h_w_k / T_dot_dot_f>0, log(T_h_w_k / T_dot_dot_f), 0) 'auxiliary
philia.append log_03 = T_dot_dot_f * (T_h_r_c / T_dot_dot_f) * @recode(T_h_r_c / T_dot_dot_f>0, log(T_h_r_c / T_dot_dot_f), 0) 'auxiliary
philia.append log_04 = T_dot_dot_f * (T_h_r_k / T_dot_dot_f) * @recode(T_h_r_k / T_dot_dot_f>0, log(T_h_r_k / T_dot_dot_f), 0) 'auxiliary
philia.append log_05 = T_dot_dot_f * (T_h_r_if / T_dot_dot_f) * @recode(T_h_r_if / T_dot_dot_f>0, log(T_h_r_if / T_dot_dot_f), 0) 'auxiliary
philia.append log_06 = T_dot_dot_f * (T_c_h_w / T_dot_dot_f) * @recode(T_c_h_w / T_dot_dot_f>0, log(T_c_h_w / T_dot_dot_f), 0) 'auxiliary
philia.append log_07 = T_dot_dot_f * (T_c_bk / T_dot_dot_f) * @recode(T_c_bk / T_dot_dot_f>0, log(T_c_bk / T_dot_dot_f), 0) 'auxiliary
philia.append log_08 = T_dot_dot_f * (T_k_h_w / T_dot_dot_f) * @recode(T_k_h_w / T_dot_dot_f>0, log(T_k_h_w / T_dot_dot_f), 0) 'auxiliary
philia.append log_09 = T_dot_dot_f * (T_k_bk / T_dot_dot_f) * @recode(T_k_bk / T_dot_dot_f>0, log(T_k_bk / T_dot_dot_f), 0) 'auxiliary
philia.append log_10 = T_dot_dot_f * (T_k_if / T_dot_dot_f) * @recode(T_k_if / T_dot_dot_f>0, log(T_k_if / T_dot_dot_f), 0) 'auxiliary
philia.append log_11 = T_dot_dot_f * (T_bk_h_w / T_dot_dot_f) * @recode(T_bk_h_w / T_dot_dot_f>0, log(T_bk_h_w / T_dot_dot_f), 0) 'auxiliary
philia.append log_12 = T_dot_dot_f * (T_bk_h_r / T_dot_dot_f) * @recode(T_bk_h_r / T_dot_dot_f>0, log(T_bk_h_r / T_dot_dot_f), 0) 'auxiliary
philia.append log_13 = T_dot_dot_f * (T_bk_c / T_dot_dot_f) * @recode(T_bk_c / T_dot_dot_f>0, log(T_bk_c / T_dot_dot_f), 0) 'auxiliary
philia.append log_14 = T_dot_dot_f * (T_bk_k / T_dot_dot_f) * @recode(T_bk_k / T_dot_dot_f>0, log(T_bk_k / T_dot_dot_f), 0) 'auxiliary
philia.append log_15 = T_dot_dot_f * (T_bk_if / T_dot_dot_f) * @recode(T_bk_if / T_dot_dot_f>0, log(T_bk_if / T_dot_dot_f), 0) 'auxiliary
philia.append log_16 = T_dot_dot_f * (T_if_h_r / T_dot_dot_f) * @recode(T_if_h_r / T_dot_dot_f>0, log(T_if_h_r / T_dot_dot_f), 0) 'auxiliary
philia.append log_17 = T_dot_dot_f * (T_if_k / T_dot_dot_f) * @recode(T_if_k / T_dot_dot_f>0, log(T_if_k / T_dot_dot_f), 0) 'auxiliary

philia.append log_18 = T_dot_dot_f * (T_h_w_c / T_dot_dot_f) * @recode(((T_h_w_c * T_dot_dot_f) / (T_h_w_dot * T_dot_c))>0, log((T_h_w_c * T_dot_dot_f) / (T_h_w_dot * T_dot_c)), 0) 'auxiliary
philia.append log_19 = T_dot_dot_f * (T_h_w_k / T_dot_dot_f) * @recode(((T_h_w_k * T_dot_dot_f) / (T_h_w_dot * T_dot_k))>0, log((T_h_w_k * T_dot_dot_f) / (T_h_w_dot * T_dot_k)), 0) 'auxiliary
philia.append log_20 = T_dot_dot_f * (T_h_r_c / T_dot_dot_f) * @recode((T_h_r_c * T_dot_dot_f) / (T_h_r_dot * T_dot_c)>0, log((T_h_r_c * T_dot_dot_f) / (T_h_r_dot * T_dot_c)), 0) 'auxiliary
philia.append log_21 = T_dot_dot_f * (T_h_r_k / T_dot_dot_f) * @recode(((T_h_r_k * T_dot_dot_f) / (T_h_r_dot * T_dot_k))>0, log((T_h_r_k * T_dot_dot_f) / (T_h_r_dot * T_dot_k)), 0) 'auxiliary
philia.append log_22 = T_dot_dot_f * (T_h_r_if / T_dot_dot_f) * @recode(((T_h_r_if * T_dot_dot_f) / (T_h_r_dot * T_dot_if))>0, log((T_h_r_if * T_dot_dot_f) / (T_h_r_dot * T_dot_if)), 0) 'auxiliary
philia.append log_23 = T_dot_dot_f * (T_c_h_w / T_dot_dot_f) * @recode(((T_c_h_w * T_dot_dot_f) / (T_c_dot * T_dot_h_w))>0, log((T_c_h_w * T_dot_dot_f) / (T_c_dot * T_dot_h_w)), 0) 'auxiliary
philia.append log_24 = T_dot_dot_f * (T_c_bk / T_dot_dot_f) * @recode(((T_c_bk * T_dot_dot_f) / (T_c_dot * T_dot_bk))>0, log((T_c_bk * T_dot_dot_f) / (T_c_dot * T_dot_bk)), 0) 'auxiliary
philia.append log_25 = T_dot_dot_f * (T_k_h_w / T_dot_dot_f) * @recode(((T_k_h_w * T_dot_dot_f) / (T_k_dot * T_dot_h_w))>0, log((T_k_h_w * T_dot_dot_f) / (T_k_dot * T_dot_h_w)), 0) 'auxiliary
philia.append log_26 = T_dot_dot_f * (T_k_bk / T_dot_dot_f) * @recode(((T_k_bk * T_dot_dot_f) / (T_k_dot * T_dot_bk))>0, log((T_k_bk * T_dot_dot_f) / (T_k_dot * T_dot_bk)), 0) 'auxiliary
philia.append log_27 = T_dot_dot_f * (T_k_if / T_dot_dot_f) * @recode(((T_k_if * T_dot_dot_f) / (T_k_dot * T_dot_if))>0, log((T_k_if * T_dot_dot_f) / (T_k_dot * T_dot_if)), 0) 'auxiliary
philia.append log_28 = T_dot_dot_f * (T_bk_h_w / T_dot_dot_f) * @recode(((T_bk_h_w * T_dot_dot_f) / (T_bk_dot * T_dot_h_w))>0, log((T_bk_h_w * T_dot_dot_f) / (T_bk_dot * T_dot_h_w)), 0)  'auxiliary
philia.append log_29 = T_dot_dot_f * (T_bk_h_r / T_dot_dot_f) * @recode(((T_bk_h_r * T_dot_dot_f) / (T_bk_dot * T_dot_h_r))>0, log((T_bk_h_r * T_dot_dot_f) / (T_bk_dot * T_dot_h_r)), 0) 'auxiliary
philia.append log_30 = T_dot_dot_f * (T_bk_c / T_dot_dot_f) * @recode(((T_bk_c * T_dot_dot_f) / (T_bk_dot * T_dot_c))>0, log((T_bk_c * T_dot_dot_f) / (T_bk_dot * T_dot_c)), 0)  'auxiliary
philia.append log_31 = T_dot_dot_f * (T_bk_k / T_dot_dot_f) * @recode(((T_bk_k * T_dot_dot_f) / (T_bk_dot * T_dot_k))>0, log((T_bk_k * T_dot_dot_f) / (T_bk_dot * T_dot_k)), 0) 'auxiliary
philia.append log_32 = T_dot_dot_f * (T_bk_if / T_dot_dot_f) * @recode(((T_bk_if * T_dot_dot_f) / (T_bk_dot * T_dot_if))>0, log((T_bk_if * T_dot_dot_f) / (T_bk_dot * T_dot_if)), 0)  'auxiliary
philia.append log_33 = T_dot_dot_f * (T_if_h_r / T_dot_dot_f) * @recode(T_if_dot * T_dot_h_r<>0,@recode(((T_if_h_r * T_dot_dot_f) / (T_if_dot * T_dot_h_r))>0, log((T_if_h_r * T_dot_dot) / (T_if_dot * T_dot_h_r)), 0),0) 'auxiliary
philia.append log_34 = T_dot_dot * (T_if_k / T_dot_dot) * @recode(T_if_dot * T_dot_k<>0,@recode(((T_if_k * T_dot_dot) / (T_if_dot * T_dot_k))>0, log((T_if_k * T_dot_dot) / (T_if_dot * T_dot_k)), 0),0) 'auxiliary

'eq 11.60
philia.append CAP =  -(log_01 + log_02 + log_03 + log_04 + log_05 +  log_06 + log_07 + log_08 + log_09 + log_10 + log_11 + log_12 + log_13 + log_14 + log_15 + log_16 + log_17)
'eq 11.61
philia.append ASC = (log_18 + log_19 + log_20 + log_21 + log_22 + log_23 + log_24 + log_25 + log_26 + log_27 + log_28 + log_29 + log_30 + log_31 + log_32 + log_33 + log_34)
'eq 11.62
philia.append X = CAP - ASC
'eq 11.63
philia.append a_score = ASC / CAP
philia.append FIT = @recode(a_score>0, k_fit * a_score * log(a_score), FIT(-1))


