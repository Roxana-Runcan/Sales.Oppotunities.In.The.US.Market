# US Market Sales Potential by Income
-----



## Project Background 


Aurora Luxury Atelier*, founded in 2024 in Copenhagen, is a European luxury lifestyle brand specializing in handcrafted smart watches and fine leather accessories that integrate seamlessly with premium smartphones.The company combines Scandinavian design with advanced wearable technology and has built a strong customer-base across different European Countries.
The company's next big step is to extend its product line to the US market and needs to understand which states offer the strongest commercial potential for its luxury products.



## Insights and recommendations are provided on the key areas:
-----
[Go to Executive summary](#executive-summary)
[### Executive Summary:]
### Geographical Targeting Insight:
### Market Analysis Insights
### Recommendations:
### Caveats and assumptions


An interactive Tableau dashboard can be downloaded [here](https://public.tableau.com/app/profile/roxana.runcan/viz/USIncomeDistribution2/Dashboard1?publish=yes).

The SQL queries utilized to cleand, standardize and conduct initial analysis of the dataset can be found [here](https://github.com/runcanroxana-droid/Sales-Potential-on-US-Market/blob/main/Cleaned_data_initial_EDA.sql).

The files with the unprocessed data can be found [here]( https://github.com/runcanroxana-droid/Sales-Potential-on-US-Market/tree/main/data/raw).

## Data Structure and Initial Checks:
-----

The US Income Database Structure, as seen below, contains two main Tables : US Household Income and US Household Income Statistics with a total row count of 65,059.

<img width="751" height="675" alt="Screenshot 2026-06-01 at 16 59 28" src="https://github.com/user-attachments/assets/2c34b6f5-789b-4d7e-b87c-fec3ef4becc5" />


## Executive Summary:
-----
   The strongest opportunity for return on investment and successful marketing execution is concentrated on the ***East Coast***. If the strategy is **state-focused**, marketing budget and inventory should prioritize the top five states in the country, with New Jersey leading the group. If the strategy is **city-focused**, the approach should prioritize the top 10 highest-earning cities identified in the analysis.


### Geographical Targeting Insight:


  - An initial review of high-earning states shows that income is heavily concentrated on the East Coast of the United States. The top five wealthiest states are:

    - District of Columbia

    - Connecticut

    - New Jersey

    - Maryland

    - Massachusetts

These are closely followed by New York, while other high-income states such as Hawaii, Alaska, and California are more geographically dispersed.

  - A deeper look at city-level income reveals that the highest-earning cities are clustered around: New Jersey, Pennsylvania, Maryland, Virginia, New York, and California. The top 10 cities household incomes ranging from roughly $180,000 to $216,000 in descending order being:
      - Short Hills (~$216,000)
      - Chevy Chase
      - Narberth
      - Chantilly
      - McLean
      - Ashburn
      - Albertson
      - Bronxville
      - Agoura Hills
      - Winnetka (~$180,000 )
   
   -  At the lowest end of the list, the South or Southern USA, has been identified as having the lowest buying power,states like Puerto Rico, Mississippi, Arkansas, West Virginia, Alabama, Oklahoma, Kentucky, South Carolina, Louisiana, Tenessee all cluster around an average income per household that rests around $ 50,000.

### Risk Considerations:

  - To reduce early-stage risk, it may be wise to avoid Alaska, Hawaii, and California in the first phase of rollout because of potential logistics and accessibility challenges. These markets could be reconsidered later, once the brand has established traction and can support broader expansion.
  -  Alaska in particular may require a more cautious, case-by-case approach before being included in a rollout plan.
    



## Market Analysis Insights:

  - Key finding : East Coast dominates high-income states 
  - Primary recommendation: Focus on the highest-income states and affluent suburban cities
  - Expansion model: should includ a pilot phase in the top East Coast markets, followed by expansion in additional high-income states such as Virginia, New York, Illinois once demand is validated
  - Complex markets with potential hidden costs: Alaska, Hawaii, California
  - Low-income states: are predominantly concentrated in the South and display a low purchasing power


## Recommendations:
----- 

   Based on the analysis, Aurora Luxury Atelier should prioritize a phased US expansion strategy centered on affluent East Coast markets.
   The strongest commercial potential is concentrated in high-income states such as the District of Columbia, Connecticut, New Jersey, Maryland, and Massachusetts, with additional opportunity in select high-income suburban cities. 
   Given the elevated logistics and infrastructure costs associated with Alaska, Hawaii, and California, these markets should be deferred until a later expansion phase.
   In the short term, the brand should focus on premium, high-income regions where purchasing power is strongest and customer acquisition efficiency is most likely to be highest.
     


## Caveats and assumptions
----- 

   - The assumption made was that the column 'Place' in the 'us_household_income" table can be populated with 'Autaugaville' , due to the prevalance of the 'Autaugaville' value in the respective column.There is no certainty that this is correct , but due to the low risk of impact on the rest of the analysis, the decision to populate the missing value was made in the row where the data was missing.


*sample company

