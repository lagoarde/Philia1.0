'ECOSYSTEM 

'Earth system
'eq 10.01
philia.append SES =@recode(@date<@dateval("152"), (K / gp) / 400, SES(-1) - SES_dis + MAT_y)
'eq 10.02
philia.append SES_dis = @recode(@date<@dateval("152"), SES_dis(-1), mu_mat * (DA / gp / 800 + zeta * dc(-1)))
philia.append dc = @recode(@date<@dateval("152"), dc(-1), dc(-1) + MAT_y - zeta*dc(-1)) 
'eq 10.03
philia.append MAT_y = mu_mat * (Y / gp) / 400
'eq 10.04
philia.append mu_mat = @recode(@date<@dateval("152"), mu_b, (mu_g * (K_g / K) + mu_b * (K_b / K)))
philia.append mu_g = @recode(@date<@dateval("152"), mu_g(-1), mu_g(-1) * (1 - impact / 100 * shock_tek))
philia.append mu_b = mu_b(-1)
philia.append impact = @exp(k_g / k)
'eq 10.05
philia.append MAT_ext = @recode(@date<@dateval("152"), MAT_ext(-1), MAT_y - SES_rec)
'eq 10.06
philia.append SES_rec = @recode(@date<@dateval("152"), SES_rec(-1), rho_rec * SES_dis)
'eq 10.07
philia.append SES_wa = @recode(@date<@dateval("152"), SES_wa(-1), SES_dis - SES_rec)
'eq 10.08
philia.append MAT_rev = @recode(@date<@dateval("152"), MAT_rev(-1), MAT_rev(-1) + MAT_con - MAT_ext)
'eq 10.09
philia.append MAT_con = @recode(@date<@dateval("152"), MAT_con(-1), sigma_mat(-1) * MAT_res(-1))
'eq 10.10
philia.append MAT_res = @recode(@date<@dateval("152"), MAT_res(-1), MAT_res(-1) - MAT_con)


'Energy system
'eq 10.20
philia.append EN_rev = @recode(@date<@dateval("152"), EN_rev(-1), EN_rev(-1) + EN_con - EN_nre)
'eq 10.21
philia.append EN_con = @recode(@date<@dateval("152"), EN_con(-1), sigma_en * EN_res(-1))
'eq 10.22
philia.append EN_nre = @recode(@date<@dateval("152"), EN_nre(-1), EN - EN_re)
'eq 10.23
philia.append EN_re = @recode(@date<@dateval("152"), EN_re(-1), eta_re * EN)
'eq 10.24
philia.append EN =@recode(@date<@dateval("152"), EN(-1),  1 / (1 + shock_tek) * epsilon_en * xi_Y * Y_real) 
'eq 10.25
philia.append shock_tek = shock_tek(-1) + kappa_tek * @movav(shock_tek_p, 20)
philia.append shock_tek_p = activ_tek * @recode(@date>@dateval("152"), d(k_g / k_b), 0)
'eq 10.26
philia.append EN_dis =@recode(@date<@dateval("152"), EN_dis(-1), EN_re + EN_nre)

'**Added equation
'eq 10.27
philia.append EN_res = @recode(@date<@dateval("152"), EN_res(-1), EN_res(-1) - EN_con)


'Emissions
'eq 10.30
philia.append CO2_em = @recode(@date<@dateval("157"), CO2_ob, CO2_lnd + CO2_ind)
'eq 10.31
philia.append CO2_lnd = @recode(@date<@dateval("157"), CO2_lnd(-1), (1 - g_lnd) * CO2_lnd(-1))
philia.append g_lnd = @recode(@date<@dateval("152"), 0, 0)
'eq 10.32
philia.append CO2_ind = @recode(@date<@dateval("152"), CO2_ind(-1), @recode((beta0 + beta_nre * EN_nre) < (CO2_em - CO2_lnd) / 2, (CO2_em - CO2_lnd) / 2, (beta0 + beta_nre * EN_nre))) 'eq 58.1
philia.append beta0 = @recode(@date<@dateval("152"), 6.904820, 6.904820 * (1 + g_beta)^(-@trend + 59))
'eq 10.33
philia.append O2 = @recode(@date<@dateval("152"), O2(-1), CO2_em - CO2_mas)
'eq 10.34
philia.append CO2_mas = @recode(@date<@dateval("152"), CO2_mas(-1), CO2_em)


'The carbon cycle
'eq 10.35
philia.append F = @recode(@date<@dateval("157"), F(-1), F2 * @logx(CO2_atm / CO2_atm_pre, 2) + F_ex)
'eq 10.36
philia.append F_ex = @recode(@date<@dateval("157"), F_ex(-1), F_ex(-1) + fex)
'eq 10.37
philia.append Temp_atm = @recode(@date<@dateval("157"), Temp_atm_ob, Temp_atm(-1) + t1 * (F - (F2 / sens) * Temp_atm(-1) - t2 * (Temp_atm(-1) - Temp_ocn(-1))))
'eq 10.38
philia.append Temp_ocn = Temp_ocn(-1) + t3 * (Temp_atm(-1) - Temp_ocn(-1))
'eq 10.39
philia.append CO2_atm = @recode(@date<@dateval("157"), CO2_atm(-1), CO2_em + phi11 * CO2_atm(-1) + phi21 * CO2_br(-1))
'eq 10.40
philia.append CO2_br = @recode(@date<@dateval("157"), CO2_br(-1), phi12 * CO2_atm(-1) + phi22 * CO2_br(-1) + phi32 * CO2_ocn(-1))
'eq 10.41
philia.append CO2_ocn = @recode(@date<@dateval("157"), CO2_ocn(-1), phi23 * CO2_br(-1) + phi33 * CO2_ocn(-1))


'Ecological efficiency
'eq 10.50
philia.append beta_nre = @recode(@date<@dateval("152"), beta_b, (beta_g * K_g / gp / (K / gp)  + beta_b * K_b / gp / (K / gp)) * (1 + g_beta)^(-@trend + 59)) 
philia.append g_beta = @recode(@date<@dateval("152"), 0, 0)
'eq 10.51
philia.append epsilon_en = @recode(@date<@dateval("152"), epsilon_b, (epsilon_g * (K_g / gp / K / gp) + epsilon_b * (K_b / gp / K / gp) )) 
'eq 10.52
philia.append eta_re = @recode(@date<@dateval("152"), eta_b, (eta_g * K_g / gp / (K / gp) + eta_b * K_b / gp / (K / gp))) 
'eq 10.53
philia.append beta_g = @recode(@date<@dateval("152"), beta_g(-1), beta_g(-1) * (1 - impact / 100 * shock_tek)) 'try 
philia.append beta_b = beta_b(-1)
'eq 10.54
philia.append epsilon_g = beta_g
philia.append epsilon_b = beta_b
'eq 10.55
philia.append eta_g = @recode(@date<@dateval("152"), eta_g(-1),@recode(eta_g(-1) * (1 + impact * shock_tek) < 1, eta_g(-1) * (1 + impact * shock_tek), 1))  'try OK
philia.append eta_b = eta_b(-1)


'Ecosystemic retroaction
'eq 10.56
philia.append dep_mat = @recode(@date<@dateval("157"), 0, (MAT_ext / MAT_rev(-1)) * 100)
'eq 10.57
philia.append dep_en = @recode(@date<@dateval("157"), 0, (EN_nre / EN_rev(-1)) * 100)
'eq 10.58
philia.append dmg_ecs = @recode(@date<@dateval("157"), 0.028, @recode(Temp_atm>0, dmg_ecs(-1) + 1 - 1 / (1 + dmg1 * Temp_atm + dmg2 * Temp_atm^2 + dmg3 * Temp_atm^(dmg4)), dmg_ecs(-1) + 1 - 1 / (1 + dmg1 * Temp_atm)))


