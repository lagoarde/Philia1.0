'BANKING SECTOR

'Income statement 
'****Initial values
'eq 5.01
series PnL_bk
PnL_bk=0
'eq 5.02
series Div_bk
Div_bk=0


'## INVESTMENT (ASSETS)

'Quantitative easing
'****Initial values
'eq 5.10
series stock_L_d_c_b
stock_L_d_c_b=0
'eq 5.11
series stock_L_d_c_g
stock_L_d_c_g=0
'eq 5.12
series stock_L_d_k_b
stock_L_d_k_b=0
'eq 5.13
series stock_L_d_k_g
stock_L_d_k_g=0
'eq 5.14
series stock_L_s_b
stock_L_s_b=0
'eq 5.15
series stock_L_s_g
stock_L_s_g=0
'eq 5.16
series stock_L_d
stock_L_d=0
series stock_L_d_b
stock_L_d_b=0
series stock_L_d_g
stock_L_d_g=0
'eq 5.17
series stock_CB_d_k_b
stock_CB_d_k_b=0
'eq 5.18
series stock_CB_d_k_g
stock_CB_d_k_g=0
'eq 5.19
series stock_CB_d_k
stock_CB_d_k=0
'eq 5.20
series stock_CP_d_k_b
stock_CP_d_k_b=0
'eq 5.21
series stock_CP_d_k_g
stock_CP_d_k_g=0
'eq 5.22
series stock_CP_d_k
stock_CP_d_k=0
'eq 5.23
series stock_D_d_g
stock_D_d_g=1000
series stock_D_d_b
stock_D_d_b=3000
'eq 5.24
series stock_F_s_k
stock_F_s_k=2100


'Debt structure
'****Initial values
'eq 5.25
series cb_d_k_b
cb_d_k_b=0
series l_d_k_b
l_d_k_b=0
'eq 5.26
series cb_d_k_g
cb_d_k_g=0
series l_d_k_g
l_d_k_g=0
'eq 5.27
series cp_d_k_b
cp_d_k_b=0
'eq 5.28
series cp_d_k_g
cp_d_k_g=0
'eq 5.29
series l_d_k
l_d_k=4000
'eq 5.30
series cb_d_k
cb_d_k=1500
'eq 5.31
series cp_d_k
cp_d_k=100

'****Fixed Parameters
'eq 5.25 and 5.26
series chi10
chi10=0.4
series chi20
chi20=0.4
'eq 5.25 and 5.26
series chi11
chi11=0.5
series chi21
chi21=0.25
'eq 5.25 and 5.26
series chi12
chi12=0.25
series chi22
chi22=0.5
'eq 5.25 and 5.26
series chi13
chi13=0.25
series chi23
chi23=0.25


'Banking credit
'****Initial values
'eq 5.32
series l_s_c_g
l_s_c_g=0
'eq 5.33
series l_s_c_b
l_s_c_b=0
'eq 5.34
series f_s_k_g
f_s_k_g=0
'eq 5.35
series f_s_k_b
f_s_k_b=0
'eq 5.36
series LR_c_g
LR_c_g=0
'eq 5.37
series LR_k_g
LR_k_g=0
'eq 5.38
series LR_c_b
LR_c_b=0
'eq 5.39
series LR_k_b
LR_k_b=0

'****Fixed Parameters
'eq 5.32 and 5.33
series gamma_lr
gamma_lr=0.05
'eq 5.36 and 5.37 
series a_lr
a_lr=0.01
series b_lr
b_lr=-0.002
series c_lr
c_lr=0.2
'eq 5.38 and 5.39
series psi_lr
psi_lr=0.5


'Inside money creation
'****Initial values
'eq 5.40
series m_bk
m_bk=0
'eq 5.41
series m_bk_g
m_bk_g=0
'eq 5.42
series m_bk_b
m_bk_b=0
'eq 5.43
series stock_M_bk
stock_M_bk=M_d_h


'## FINANCING (LIABILITIES)

'Cash and deposit liabilities
'****Initial values
'eq 5.50
series H_s_h
'eq 5.51
series M_s_h


'Refinancing operations  
'****Initial values
'eq 5.52
series stock_H_d_mr
stock_H_d_mr=0
'eq 5.53
series stock_A_d_bk
stock_A_d_bk=0
'eq 5.54
series stock_A_s_bk
stock_A_s_bk=0
'eq 5.55
series stock_H_d_qe
stock_H_d_qe=0
'eq 5.56
series stock_H_xs
stock_H_xs=0

'****Fixed Parameters
'eq 5.52
series rho_mr
rho_mr=0.01


'Banks’ balance sheet
'****Initial values
'eq 5.58
series stock_E_bk_a
stock_E_bk_a=0
'eq 5.59
series stock_E_bk_e
stock_E_bk_e=0
series e_s_bk
e_s_bk=0
series gb_d_bk
gb_d_bk=0
'eq 5.60
series TA_bk_a
TA_bk_a=0
'eq 5.61
series TA_bk_e
TA_bk_e=0
'eq 5.62
series TL_bk
TL_bk=0


'## REGULATION

'Capital adequacy ratio (CAR)
'****Initial values
'eq 5.70
series RWA_e
RWA_e=1
'eq 5.71
series RWA_a
RWA_a=1
'eq 5.72
series QE_s_Tgt
QE_s_Tgt=0
series QE_Tgt
QE_Tgt=0
'eq 5.73
series RWA_max 
RWA_max=1
series CAR_Tgt
CAR_Tgt= 0.12
'eq 5.74
series CAR_a
CAR_a=0.0305
'eq 5.75
series CAR_e
CAR_e=0.0305

'****Fixed Parameters
'eq 5.70 to 5.72
series  eta
eta = 4


'Liquidity ratio (LCR)
'****Initial values
'eq 5.77
series stock_GB_d_bk_Tgt
stock_gb_d_bk_Tgt=0
'eq 5.78
series gb_d_bk_Tgt
gb_d_bk_Tgt=0
'eq 5.79
series LCR_Tgt
LCR_Tgt=1
series LCR_a
LCR_a=LCR_Tgt
'eq 5.81
series LCR_e
LCR_e=1
'eq 5.82
series stock_GB_d_bk
stock_GB_d_bk=0
series stock_GB_s
stock_GB_s=35000


'Banks’ balance sheet
'****Initial values
series BRA_a
BRA_a=0
series BRA_e
BRA_e=0




