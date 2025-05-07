'MACROECONOMIC MODEL

'Nominal GDP
'****Initial values
'eq 1.01
series Y
Y=10000
'eq 1.02
series Inv
Inv=2500
'eq 1.03
series C_total
C_total=5000


'Inflation and real GDP
'****Initial values
'eq 1.10
series pi
pi=0.01
'eq 1.11
series epsilon_pi 
epsilon_pi =0
'eq 1.12
series pi_ecs
pi_ecs=pi
'eq 1.14
series pi_f
pi_f=0
'eq 1.17
series gp
gp=1
'eq 1.18
Series Y_real
Y_real=10000

'****Variable Parameters
'eq 1.13
series iota_wb
iota_wb=0.6
'eq 1.15
series iota_wb_Tgt
iota_wb_Tgt=0.6
'eq 1.16
series omega_wb
omega_wb= 0.6667

'****Fixed Parameters
'eq 1.12
series omicron_ecs
omicron_ecs = 0.1
'eq 1.13 and 1.14
series psi_f
psi_f=1-omega_wb
series iota_f_Tgt
iota_f_Tgt=0.6


'Productive capital assets
'****Initial values
'eq 1.20
series K
K=15000
series K_k
K_k=5000
series K_c
K_c=5000
series K_p
K_p=5000
'eq 1.21
series DA
DA=1500
series DA_k
DA_k=0
series DA_c
DA_c=0
series DA_p
DA_p=0
'eq 1.22
series K_b
K_b=11250
series K_p_b
K_p_b=3750
'eq 1.23
series K_g
K_g=3750


