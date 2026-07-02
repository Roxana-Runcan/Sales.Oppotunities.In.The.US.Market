# US Market Sales Potential by Income
-----
[![MySQL](https://img.shields.io/badge/-MySQL-4479A1?style=flat&logo=mysql&logoColor=white)](https://www.mysql.com/)
<a href="https://www.tableau.com/">
  <img src="https://logo.svgcdn.com/logos/tableau.svg" alt="Tableau" width="100" />
</a>

## Project Background 


Aurora Luxury Atelier*, founded in 2024 in Copenhagen, is a European luxury lifestyle brand specializing in handcrafted smart watches and fine leather accessories that integrate seamlessly with premium smartphones.The company combines Scandinavian design with advanced wearable technology and has built a strong customer-base across different European Countries.
The company's next big step is to extend its product line to the US market and needs to understand which states offer the strongest commercial potential for its luxury products.



## Insights and recommendations are provided on the key areas:
-----
- [**Executive summary**](#executive-summary)

- [**Deep Dive Analysis**](#deep-dive-analysis)
     - [Income Distribution](#income-distribution)  
     - [Income Distribution](#income-distribution)  
     - [Income Distribution](#income-distribution)  
     - [Income Distribution](#income-distribution)  

- [**Market Analysis Insights**](#market-analysis-insights)

- [**Recommendations**](#recommendations)

- [**Caveats and assumptions**](#caveats-and-assumptions)

  




An interactive Tableau dashboard can be downloaded [here](https://public.tableau.com/app/profile/roxana.runcan/viz/DistributionOfBuyingPoweracrosstheU_S/Dashboard1(https://public.tableau.com/app/profile/roxana.runcan/viz/USIncomeDistribution2/Dashboard1?publish=yes)](https://public.tableau.com/app/profile/roxana.runcan/viz/DistributionOfBuyingPoweracrosstheU_S/Dashboard1)).

The SQL queries utilized to cleand, standardize and conduct initial analysis of the dataset can be found [here](https://github.com/runcanroxana-droid/Sales-Potential-on-US-Market/blob/main/Cleaned_data_initial_EDA.sql).

The files with the unprocessed data can be found [here]( https://github.com/runcanroxana-droid/Sales-Potential-on-US-Market/tree/main/data/raw).

## Data Structure and Initial Checks:
-----

The US Income Database Structure, as seen below, contains two main Tables : US Household Income and US Household Income Statistics with a total row count of 65,059.

<img width="751" height="675" alt="Screenshot 2026-06-01 at 16 59 28" src="https://github.com/user-attachments/assets/2c34b6f5-789b-4d7e-b87c-fec3ef4becc5" />


## Executive Summary


The purpose of this analysis was to identify concentrations of buying power across the United States to guide market-entry strategy for a European company. The results show that the top 10 most affluent states should be the primary target, with nine located on the East Coast and one on the West Coast.

At the city level, the strongest concentration of high-earning cities is found in only five states: Connecticut, New Jersey, Maryland, California, and Massachusetts. This pattern suggests that initial expansion efforts should focus on these states, as they combine strong household purchasing power with clustered high-income urban markets.

## Deep Dive Analysis
-----

### Income Distribution:
- The income distribution shows a clear spread between lower-income territories and the highest-earning states, with Puerto Rico sitting at the bottom of the range and the strongest markets clustering well above the national mean.
- This suggests a meaningful concentration of purchasing power in a limited set of geographies.
<p align="center">
  <img src="https://github.com/user-attachments/assets/46c25fb1-c263-4592-9f5d-67b97101c893" width="700" alt="general" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/2dbdd32f-c54e-4dfa-8da5-90e6d629da5c" width="230" alt="100-150k" />
  <img src="https://github.com/user-attachments/assets/e6b6e24e-e716-4bfd-97c8-e3c5da4a7c6f" width="230" alt="btw 150-200k" />
  <img src="https://github.com/user-attachments/assets/653dd36b-2c58-4a9d-ae52-86116142f8f4" width="230" alt="over 200k" />
</p>



### High Income States:
- The top 10 states all exceed the national average of roughly 65k, making them the most relevant geographies for premium market targeting.
- These states form the core market for the next stage of commercial prioritization.
<p align="center">
<img width="700" alt="Income by State" src="https://github.com/user-attachments/assets/ef1ae2cc-2e58-46a3-9d55-dc7b99581c88" />
</p>

### City-level Concentration:
- Within these 10 states, the strongest cities show average incomes starting at roughly 169k on the low end.This indicates that the opportunity is not evenly distributed across each state, but concentrated in select urban areas.

<p align="center">
<img width="700" height="486" alt="Income by City and State" src="https://github.com/user-attachments/assets/c2bcd6b4-df50-47cd-b329-f96ec8ff2c97" />
</p>

### Geographic Clustring:
- A notable clustering pattern appears on the East Coast, where 9 of the 10 high-income states are concentrated. The remaining one high-income state are is represented by Californiaon the West Coast, creating a secondary but important opportunity cluster.
- The analysis reveales that high_earning Cities are clusted within a small set of States,rather than being evenly distributed, wealth is concentrated in a few regions , highlighting priority zones for market entry
-  Clustered wealth reduces the need to spread resources across the whole country, because these attractive markets sit near each other
-  The access on these markets is extremely advantageous , as clustered cities often share logistics, media reach, and customer behavior patterns, which can make entry and scaling more efficient

### Risk Considerations:
- Alaska and Hawaii were excluded to improve distribution efficiency and keep the analysis focused on contiguous market logistics.That said, Alaska may warrant separate review later, as higher logistics costs and geographic isolation could influence both feasibility and observed income levels.


## Market Analysis Insights
-----

  - Key finding : East Coast dominates high-income states, closely followed by the West Coast
  - Primary recommendation: Focus on the highest-income states and affluent suburban cities
  - Expansion model: should includ a pilot phase in the top East Coast markets, followed by expansion in additional high-income states such as California and Washington once demand is validated
  - Complex markets with potential hidden costs: Alaska, Hawaii
  - Low-income states: are predominantly concentrated in the South and display a low purchasing power

## Recommendations
-----

   Based on the analysis, Aurora Luxury Atelier should prioritize a phased US expansion strategy centered on affluent East Coast markets.
   The strongest commercial potential is concentrated in high-income states such as the District of Columbia, Connecticut, New Jersey, Maryland, and Massachusetts, with additional opportunity in select high-income suburban cities. This should reduce operational complexity and improve access to high-value customer segments.
   Given the elevated logistics and infrastructure costs associated with Alaska and Hawaii these markets should be deferred until a later expansion phase.
   In the short term, the brand should focus on premium, high-income regions where purchasing power is strongest and customer acquisition efficiency is most likely to be highest.
     


## Caveats and assumptions
----- 

   The income figures should be interpreted as directional market signals rather than a guarantee of demand or conversion.
   High income improves targeting potential, but product-market fit, pricing, competition, and local execution will still drive results.
   The exclusion of Alaska and Hawaii is practical for rollout planning, but it limits the completeness of the national picture.

*represent a sample company
