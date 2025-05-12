
'INFORMATION

' To run the monto-carlo analysis you need
' Run the scenario which you would like to test (here it is scenario 1)
' Identify the parameters which you would like to use
'In this example chosen parameters are ad, v_c_3, lr_a1, lr_b_1, psi, sig_i_1, sig_i_2, gamma_i

scalar IDM
IDM=0.05
!reps = 100 ' 'this defined the number of iterations  
for !i=1 to !reps
!mean_ad = 0.075
!var_ad = IDM*!mean_ad
!mean_v_c_3 = 0.05
!var_v_c_3 = IDM*!mean_v_c_3
!mean_lr_a1 = 0.01
!var_lr_a1 = IDM*!mean_lr_a1
!mean_lr_b1 =-0.002
!var_lr_b1 = IDM*@abs(!mean_lr_b1)
!mean_psi =0.5
!var_psi = IDM*!mean_psi
!mean_sig_i_1 =0.0068
!var_sig_i_1 = IDM*!mean_sig_i_1
!mean_sig_i_2 =0.05
!var_sig_i_2 = IDM*!mean_sig_i_1
!mean_gamma_i =1
!var_gamma_i = IDM*!mean_gamma_i
!n = 10

series ad!i = !mean_ad + @sqrt(!var_ad)*nrnd
series v_c_3!i = !mean_v_c_3 + @sqrt(!var_v_c_3)*nrnd
series lr_a1!i = !mean_lr_a1 + @sqrt(!var_lr_a1)*nrnd
series lr_b1!i = !mean_lr_b1 + @sqrt(!var_lr_b1)*nrnd
series psi!i = !mean_psi + @sqrt(!var_psi)*nrnd
series sig_i_1!i = !mean_sig_i_1 + @sqrt(!var_psi)*nrnd
series sig_i_2!i = !mean_sig_i_2 + @sqrt(!var_psi)*nrnd
series gamma_i!i = !mean_gamma_i + @sqrt(!var_psi)*nrnd

next
'

!reps = 100 'nombre d'itérations 
for !i=1 to !reps
philia.scenario(a= !i) "scenario 1" 'here we choose scenario 1 
ecosystemic_shock=1
shock_qe=0
shock_inf=1
ad=ad!i
v_c_3=v_c_3!i
lr_a1=lr_a1!i
lr_b1=lr_b1!i
psi=psi!i
sig_i_1=sig_i_1!i
sig_i_2=sig_i_2!i
gamma_i=gamma_i!i
smpl 150 210
smpl @all 
philia.solve
next


for !i=1 to 100
series temp_gap!i=((temp_at_!i-temp_at_2)/temp_at_2) 
series y_gap!i=((y_!i-y_2)/y_2) 
series y_r_gap!i=((y_r_!i-y_r_2)/y_r_2) 
series k_g_gap!i=((k_g_!i*k_2)/(k_!i*k_g_2)-1) 
series v_gap!i=((v_!i-v_2)/v_2) 
next

pagecopy(page=rndcopy, smpl="150 210")
pagestack (wf=try) temp_gap? y_gap? y_r_gap? k_g_gap? v_gap? @ temp_gap? y_gap? k_g_gap? v_gap? 


temp_gap.distplot cdf
y_gap.distplot cdf
y_r_gap.distplot cdf
k_g_gap.distplot cdf
v_gap.distplot cdf
 

temp_gap.distplot hist kernel theory(leg=det)
y_gap.distplot hist kernel theory(leg=det)
k_g_gap.distplot hist kernel theory(leg=det)
v_gap.distplot hist kernel theory(leg=det)




