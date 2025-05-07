'HOUSEHOLDS

'Nominal and real financial wealth
'****Initial values
'eq 2.01
series V
V=15400
'eq 2.02
series V_w
V_w=11550
'eq 2.03
series V_r
V_r=3850
'eq 2.04
series V_real
V_real=14000
'eq 2.05
series V_w_real
V_w_real=3500
'eq 2.06
series V_r_real
V_r_real=10500


'## CONSUMPTION

'Nominal and real household consumption
'****Initial values 
'eq 2.10
series C_w
C_w=2500
'eq 2.11
series C_r
C_r=2500
'eq 2.13
series C_w_real
C_w_real=C_w
'eq 2.14
series C_r_real
C_r_real=C_r

'****Variable Parameters
'eq 2.12
series alfa2
alfa2 = 0.02

'****Fixed Parameters
'eq 2.10 and 2.11
series alfa0
alfa0=100
series alfa1
alfa1=0.85
series upsilon
upsilon = 0.005


'Consumption allocation
'****Initial values
'eq 2.15
series C_c
C_c=1000
'eq 2.16
series C_p
C_p=1000
'eq 2.17
series C_k
C_k=3000

'****Fixed Parameters
'eq 2.15
series alfa_c
alfa_c=0.15
'eq 2.16
series alfa_p
alfa_p=0.15


'## SAVING

'Households' portfolio choice
'****Initial values
'eq 2.20
series M_d_w
M_d_w=10500
'eq 2.21
series H_d_w
H_d_w=0
'eq 2.22
series M_d_r
M_d_r=3500
series S_d_r
S_d_r=0
'eq 2.24
series H_d_r
H_d_r=0
'eq 2.25
series stock_H_d_h
stock_H_d_h=1400
'eq 2.26
series M_d_h
M_d_h=14000

'****Variable Parameters
'eq 2.23
series gamma10
gamma10=0.3
series gamma10_n
gamma10_n=0.3
series gamma20
gamma20=0.6

'****Fixed Parameters
'eq 2.20
series kappa10
kappa10=0.9
series kappa11
kappa11=0.0001
series kappa12
kappa12=0.0001
'eq 2.22a
series gamma11
gamma11=0.01
series gamma12
gamma12=0.005
series gamma14
gamma14=0.01
series gamma15
gamma15=0.005
series gamma21
'eq 2.22b
gamma21=0.005
series gamma22
gamma22=0.01
series gamma24
gamma24=0.005
series gamma25
gamma25=0.005
'eq 2.23
series omega
omega=0.05


'## INCOME

'Nominal and real household disposable income
'****Initial values
'eq 2.30
series YD_w
YD_w=6500
'eq 2.31
series YD_r
YD_r=6500
'eq 2.32
series YD_w_real
YD_w_real=YD_w
'eq 2.33
series YD_r_real
YD_r_real=YD_r

'****Fixed Parameters
'eq 2.1230
series teta_w
teta_w=0.25
series ret_c
ret_c=0.05
'eq 2.31
series teta_r
teta_r=0.2


'Wage bill and allocation of wages
'****Initial values
'eq 2.34
series WB
WB=6000
'eq 2.35
series WB_c
WB_c=3000
'eq 2.36
series WB_k
WB_k=2000
'eq 2.37
series WB_p
WB_p=1000

'****Fixed Parameters
'eq 2.35
series rho_c
rho_c=0.10
'eq 2.36
series rho_k
rho_k=0.75
'eq 2.37
series rho_p
rho_p=0.15


