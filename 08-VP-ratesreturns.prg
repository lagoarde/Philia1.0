'RATES RETURNS 

'Money market rates
'****Initial values
'eq 8.01
series i_cbk
i_cbk=0.0045
series i_cbk_spread
i_cbk_spread=0.0045
'eq 8.02
series i_df
i_df=0 
'eq 8.03
series i_mr
i_mr=0
series i_mr_spread
i_mr_spread=0.0001


'Bank lending rates
'****Initial values
'eq 8.04
series greenium
greenium=0
'eq 8.05
series i_cp_b
i_cp_b=pi
'eq 8.06
series i_cp_g
i_cp_g=pi
'eq 8.07
series i_l_k_b
i_l_k_b=pi
'eq 8.08
series i_l_k_g
i_l_k_g=pi
'eq 8.09
series i_cb_b
i_cb_b=pi
'eq 8.10
series i_cb_g
i_cb_g=pi
'eq 8.11
series i_l_c_b
i_l_c_b=pi
'eq 8.12
series i_l_c_g
i_l_c_g=pi
'eq 8.13
series i_sa
i_sa=0.0001
'eq 8.14
series i_gb
i_gb=0.0113

'****Fixed Parameters
'eq 8.04
series sigma0
sigma0=0.01
series gamma_ecs
gamma_ecs=1
'eq 8.05, 8.06 and 8.14
series sigma1
sigma1=i_gb-i_cbk
'eq 8.07 and 8.08
series sigma2
sigma2=0.05
'eq 8.13
series sigma3
sigma3=1


'Total returns
'****Initial values
'eq 8.20
series r_cb_b
r_cb_b=0
'eq 8.21
series r_cb_g
r_cb_g=0
'eq 8.22
series r_l_k_b
r_l_k_b=0
'eq 8.23
series r_l_k_g
r_l_k_g=0
'eq 8.24
series r_l_c_b
r_l_c_b=0
'eq 8.25
series r_l_c_g
r_l_c_g=0
'eq 8.26
series r_gb
r_gb=0
'eq 8.27
series r_if
r_if=0


'Realized capital gains
'****Initial values 
'eq 8.28
series CG_cb_b
CG_cb_b=0
'eq 8.29
series CG_cb_g
CG_cb_g=0
'eq 8.30
series CG_l_k_b
CG_l_k_b=0
'eq 8.31
series CG_l_k_g
CG_l_k_g=0
'eq 8.32
series CG_l_c_b
CG_l_c_b=0
'eq 8.33
series CG_l_c_g
CG_l_c_g=0
'eq 8.34
series CG_gb
CG_gb=0
'eq 8.35
series CG_e
CG_e=0


'Expected capital gains
'****Initial values
'eq 8.36
series CG_exp_cb_b
CG_exp_cb_b=0
'eq 8.37
series CG_exp_cb_g
CG_exp_cb_g=0
'eq 8.38
series CG_exp_l_k_b
CG_exp_l_k_b=0
'eq 8.39
series CG_exp_l_k_g
CG_exp_l_k_g=0
'eq 8.40
series CG_exp_l_c_b
CG_exp_l_c_b=0
'eq 8.41
series CG_exp_l_c_g
CG_exp_l_c_g=0
'eq 8.42
series CG_exp_gb
CG_exp_gb=0
'eq 8.43
series CG_exp_e
CG_exp_e=0

'****Fixed Parameters
'eq 8.36 to 8.43
series psi_ecg
psi_ecg=0.05


series totalKgain 
totalKgain=0 
series cumtotalKgain  
cumtotalKgain = 0



series totalKgain_qe
totalKgain_qe=0 
series cumtotalKgain_qe  
cumtotalKgain_qe= 0

series CG_cbk_b_b_qe 
CG_cbk_b_b_qe=0
series CG_cbk_b_g_qe 
CG_cbk_b_g_qe =0
series CG_cbk_l_k_b_qe 
CG_cbk_l_k_b_qe =0
series CG_cbk_l_k_g_qe 
CG_cbk_l_k_g_qe =0
series CG_cbk_l_c_b_qe 
CG_cbk_l_c_b_qe =0
series CG_cbk_l_c_g_qe 
CG_cbk_l_c_g_qe =0


series totalKgain_cbk_qe
totalKgain_cbk_qe=0 
series cumtotalKgain_cbk_qe  
cumtotalKgain_cbk_qe= 0


'## STOCK MARKET

series p_l_c_b
p_l_c_b=1/i_l_k_b

series p_l_c_g
p_l_c_g=1/i_l_k_b

series p_l_k_b
p_l_k_b=1/i_l_k_b

series p_l_k_g
p_l_k_g=1/i_l_k_b

series p_cb_b
p_cb_b=1/i_l_k_b

series p_cb_g
p_cb_g=1/i_l_k_b

series p_cp_k_b
p_cp_k_b=1/i_cp_b

series p_cp_k_g
p_cp_k_g=1/i_cp_g

series p_gb
p_gb=1/i_l_k_b

series p_e
p_e=1/i_l_k_b


