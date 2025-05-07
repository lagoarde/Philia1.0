'LISTED CORPORATIONS

'Profit
'****Initial values
'eq 4.01
series PnL_k
PnL_k=0
'eq 4.02
series div_k
div_k=0
'eq 4.03
series div_d
div_d=0
'eq 4.04
series RE_k
RE_k=0

'****Fixed Parameters
'eq 4.03
series r_exp_k
r_exp_k=0.35 '0.15


'## INVESTMENT (ASSETS)

'Total investment demand
'****Initial values
'eq 4.10
series K_k
K_k=5000  '10000
'eq 4.11
series K_k_b
K_k_b=3750 '7500
'eq 4.12
series K_k_g
K_k_g=1250 '2500
'eq 4.13
series DA_k
DA_k=0 '1000
'eq 4.14
series DA_k_b
DA_k_b=0
'eq 4.15
series DA_k_g
DA_k_g=0
'eq 4.16
series K_k_Tgt
K_k_Tgt=0
'eq 4.17
series Inv_d_k
Inv_d_k=2000

'****Fixed Parameters
'eq 4.16
series kappa_k
kappa_k=2.5
'eq 4.17
Series nu_k
nu_k = 0.09


'Green structure of investment demand
'****Initial values
'eq 4.18
series Inv_d_k_g
Inv_d_k_g=500
'eq 4.19
series Inv_d_k_b
Inv_d_k_b=1500

'****Fixed Parameters
'eq 4.18
Series omega1_k
omega1_k = 0.25
Series omega2_k
omega2_k = 0.05


'Investment spending
'****Initial values
'eq 4.20
series Inv_s_k_g
Inv_s_k_g=500
'eq 4.21
series Inv_s_k_b
Inv_s_k_b=1500
'eq 4.22
series Inv_s_k
Inv_s_k=0


'## FINANCING (LIABILITIES)

'Investment financing
'prêt bancaires
'****Initial values
'eq 4.30
series f_s_k
f_s_k=2100
'eq 4.31
series f_d_k_g
f_d_k_g=0
'eq 4.32
series f_d_k_b
f_d_k_b=0
'eq 4.33
series e_d_k
e_d_k=8341
series e_s_k
e_s_k=8341
series E_d
E_d=E_s_k
series e_d_p
e_d_p=e_d

'Financial liabilities
'****Initial values
'eq 4.34
series l_s_k_b
l_s_k_b=0
'eq 4.35
series l_s_k_g
l_s_k_g=0
'eq 4.36
series cb_s_k_b
cb_s_k_b=1000
'eq 4.37
series cb_s_k_g
cb_s_k_g=500
'eq 4.38
series cp_s_k_b
cp_s_k_b=75
'eq 4.39
series cp_s_k_g
cp_s_k_g=25
'eq 4.40
series stock_L_s_k
stock_L_s_k=6000
'eq 4.41
series stock_L_s_k_b
stock_L_s_k_b=5000
'eq 4.42
series stock_L_s_k_g
stock_L_s_k_g=1000
'eq 4.43
series stock_CB_s_k
stock_CB_s_k=1500
'eq 4.44
series stock_CB_s_k_b
stock_CB_s_k_b=1000
'eq 4.45
series stock_CB_s_k_g
stock_CB_s_k_g=500
'eq 4.46
series stock_CP_s_k
stock_CP_s_k=100
'eq 4.47
series stock_CP_s_k_b
stock_CP_s_k_b=75
'eq 4.48
series stock_CP_s_k_g
stock_CP_s_k_g=25
'eq 4.49
series stock_E_s_k
stock_E_s_k=8341
'eq 4.50
series stock_D_s_k
stock_D_s_k=0
'eq 4.51
series stock_D_s_k_b
stock_D_s_k_b=0
'eq 4.52
series stock_D_s_k_g
stock_D_s_k_g=0

'AUXILIARY
series stock_L_s
stock_L_s=0
