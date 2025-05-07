
'notes

'to change investment share in gdp modify capital target & public spending & tax rate
'to change inflation impact on nominal consumption change alfatwo
'to change inflation impact on gdp change iota stuff
'to change dmg_ecs (?) change epsilon

'to do: (i) keep growth regime and financial structure together (ii) change temperatures and inflation

'**** CREATE WORK FILE

wfcreate(wf=philia. page=integer date)  u 500


'**********************************************************************************************

'**** SHOCKS


'*** ECOSYSTEMIC SHOCK
'**  when this variable is set to zero, ecosystemic feedback loops are disactivated; when it is set to one,  ecosystemic feedback loop are activated
'***It is featured in equation (1.12) (defining climate inflation) and equation (10.58) (defining the damage function)

series ecosystemic_shock
ecosystemic_shock= 0


'*** GREEN LENDING RISK 
' this variable is comprised between 0 and 1 and impacts banks' perception of green credit demand by coop. It is set to 1 in the baseline scenario
'*** It is featured in equation (5.36) and (5.37) (defining banks lending risk for green coop and green listed firms' loans) 
series shock_risk_k
shock_risk_k=1

series shock_risk_c
shock_risk_c=1

'series shock_risk
'shock_risk=1


'***ENDOGENOUS GREEN TECHNOLOGICAL CHANGE 
'* the shock_tek variable is comprised between 0 and 1 and endogenizes green technological change . When shock_tek is set to 1 carbon and energy materlal footprint  decrease as a function of the green to total productive capital ratio
' It is featured in auxiliary ecosystemic equations defining mu_g, eta_g, beta_g, epsilon_g, mu_b, eta_b,  beta_b, epsilon_b

series shock_tek
shock_tek=0
series shock_tek_p
shock_tek_p=0
series activ_tek
activ_tek=0


'***ENDOGENOUS CENTRAL BANK INTERVENTION
'this variable takes on zero/one values. When it is set to one the Central Bank maintains an asset repurchase program 
'It is featured in equation 5.72 which defines the Central Banks annual QE volume

series shock_qe
shock_qe=0


'SECONDARY MARKET SHOCKS
'this variable sets the value of the periodic capital gains on secondary market for green and brown assets. these are set to zero in the baseline scenario
' these variables are featured in the raft of equations 8.28 to 8.34

'****Fixed Parameters
'eq 8.28, 8.30, 8.32
series phi_b
phi_b = 0
'eq 8.29, 8.31, 8.33
series phi_g
phi_g = 0
'eq 8.34
series phi_bg
phi_bg = 0

'series phi_e
'phi_e=0


'*****************************************************
'***** VARIABLES AND PARAMETERS (VP)


'Module 1: Variables and Parameters
include 01-VP-Macromodel

'Module 2: Variables and Parameters
include 02-VP-Households
 
'Module 3: Variables and Parameters
include 03-VP-Social

'Module 4: Variables and Parameters
include 04-VP-Capitaliste

'Module 5: Variables and Parameters
include 05-VP-Bank

'Module 6: Variables and Parameters
include 06-VP-Fund

'Module 7: Variables and Parameters
include 07-VP-CentralBank
 
'Module 8: Variables and Parameters
include 08-VP-RatesReturns

'Module 9: Variables and Parameters
include 09-VP-Public

'Module 10: Variables and Parameters
include 10-VP-Ecosystem

'Module 11: Variables and Parameters
include 11-VP-biomimicry


'*****************************************************
'***** EQUATIONS (EQ)

model philia 

philia.append omicron = 0.0004
philia.append share_price = 1

'Module 1: covers the basic equations of a macroeconomic model
include 01-EQ-MacroModel

'Module 2: concerns worker and rentier households within the economy 
include 02-EQ-Households

'Module 3: invests the social enterprises as companies with virtuous investment behavior
include 03-EQ-Social

'Module 4: adresses listed corporation as a response to market logic
include 04-EQ-Capitaliste

'Module 5: deals with banks in the granting of credit and the purchase of debt
include 05-EQ-Bank

'Module 6: examines investment funds in their financing of the economy
include 06-EQ-Fund

'Module 7: discusses the role of central banks as regulators
include 07-EQ-CentralBank

'Module 8: determines different interest rates and rates of return
include 08-EQ-RatesReturns

'Module 9: studies the public sector, both government and state-owned enterprises
include 09-EQ-Public

'Module 10: presents the relationship between the ecosystem and the economy
include 10-EQ-Ecosystem

'Module 11: contains the intersectoral monetary ‘trophic’ flows
include 11-EQ-Biomimicry

philia.solve


'this scenario activates full inflation with full cost pricing and ecosystemic shocks it is the baseline
philia.scenario "scenario 1"
smpl 150 210
ecosystemic_shock=1
smpl @all 
'Solve the model for the current sample 
philia.solve


