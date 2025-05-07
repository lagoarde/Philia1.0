'INVESTMENT FUNDS

'eq 6.01
philia.append PnL_if = Div_bk + Div_k + i_gb * gb_d_if(-1) + i_sa * m_d_if(-1)
'eq 6.02
philia.append Div_if = PnL_if(-1)


'## INVESTMENT (ASSETS)

'eq 6.10
philia.append e_d_k =@recode(S_if > e_s_k, e_s_k, S_if)
'eq 6.11
philia.append stock_GB_d_if = stock_GB_d_if(-1) + gb_d_if
'eq 6.12
philia.append gb_d_if = @recode(gb_s - gb_d_bk > 0, @recode(gb_s - gb_d_bk < S_if - e_d_k - e_s_bk, gb_s - gb_d_bk, S_if - e_d_k - e_s_bk), 0)


'eq 6.13
philia.append m_d_if = @recode((S_if - e_d_k - e_s_bk) - gb_d_if > 0, (S_if - e_d_k - e_s_bk) - gb_d_if ,0)
'eq 6.14
philia.append stock_M_d_if = stock_M_d_if(-1) + m_d_if


'## FINANCING (LIABILITIES)

'eq 6.20
philia.append S_if = S_d_r

