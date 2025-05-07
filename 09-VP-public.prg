'PUBLIC SECTOR

'Public budget balance
'****Initial values
'eq 9.01
series BB_p
BB_p=0

'Public sector firms
'****Initial values
'eq 9.02
series PnL_p
PnL_p=0
'eq 9.03
series RE_p
RE_p=0
'eq 9.04
series Div_p
Div_p=0


'## INVESTMENT (ASSETS)

'The government’s budget constraint
'****Initial values
'eq 9.10
series G
G=0
'eq 9.11
series G_c
G_c=0
'eq 9.12
series G_k
G_k=0

'****Fixed Parameters
'eq 9.10
series G_start
G_start=6000
'eq 9.11
series mu_c
mu_c=0.2


'Public sector firms
'****Initial values
'eq 9.14
series K_p_Tgt
K_p_Tgt=1875
'eq 9.15
series K_p
K_p=5000
'eq 9.16
series Inv_d_p
inv_d_p=500
'eq 9.17
series DA_p
DA_p=250
'eq 9.18
series Inv_d_p_g
inv_d_p_g=200
'eq 9.19
series Inv_d_p_b
inv_d_p_b=300
'eq 9.20
series Inv_s_p
inv_s_p=0

'****Fixed Parameters
'eq 9.13
series kappa1_p
kappa1_p=0.0090
'eq 9.17
series kappa2_p
kappa2_p=0.3


'## FINANCING (LIABILITIES)

'Tax payments
'****Initial values
'eq 9.20
series T
T=0
'eq 9.21
series T_w
T_w=0
'eq 9.22
series T_r
T_r=0
'eq 9.23
series T_c
T_c=0
'eq 9.24
series T_k
T_k=0

'****Fixed Parameters
'''eq 9.23
series teta_c
teta_c=0
'''eq 9.24
series teta_k
teta_k=0.35


'Treasury issues
'****Initial values
'eq 9.35
series gb_s
gb_s=0
'eq 9.36
series stock_GB_s
stock_GB_s=35000


