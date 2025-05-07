'SOCIAL ENTERPRISES

'Surplus
'****Initial values
'eq 3.01
series PnL_c
PnL_c=0


'## INVESTMENT (ASSETS)

'Total investment demand
'****Initial values
'eq 3.10
series K_c
K_c=5000
'eq 3.12
series DA_c_b
DA_c_b=0
'eq 3.13
series DA_c_g
DA_c_g=0

'****Fixed Parameters
'eq 3.11 and 3.12
series lambda
lambda= 0.07


'Productive assets
'****Initial values
'eq 3.14
series K_c_g
K_c_g=1250
'eq 3.15
series K_c_b
K_c_b=3750
'eq 3.16
series K_c_Tgt
K_c_Tgt=0
'eq 3.17
series Inv_d_c
Inv_d_c=0

'****Fixed Parameters
'eq 3.16
series iota1
iota1=0.25
series iota2
iota2=0.0005
'eq 3.17
Series nu_c
nu_c = 0.07


'Green structure of investment demand
'****Initial values
'eq 3.18
series Inv_d_c_g
Inv_d_c_g=1500
'eq 3.19
series Inv_d_c_b
Inv_d_c_b=1500

'****Fixed Parameters
'eq 3.18 and others
Series omega1_c
omega1_c = 0.25
series ad_ecs
ad_ecs=0.075
Series omega2_c
omega2_c = 0.05


'Investment spending
'****Initial values
'eq 3.20
series Inv_s_c_g
Inv_s_c_g=1500
'eq 3.21
series Inv_s_c_b
Inv_s_c_b=1500
'eq 3.22
series Inv_s_c
Inv_s_c=0


'## FINANCING (LIABILITIES)

'Financial structure
'****Initial values
'eq 3.30
series l_d_c_g
l_d_c_g=0
'eq 3.31
series l_d_c_b
l_d_c_b=0
'eq 3.32
series l_d_c
l_d_c=0


'Financial liabilities
'****Initial values
'eq 3.33
series l_s_c
l_s_c=0
'eq 3.34
series stock_L_s_c_g
stock_L_s_c_g=1500
'eq 3.35
series stock_L_s_c_b
stock_L_s_c_b=1500
'eq 3.36
series stock_L_s_c
stock_L_s_c=3000




