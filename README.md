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


   The strongest opportunity for return on investment and successful marketing execution is concentrated on the ***East Coast***. If the strategy is **state-focused**, marketing budget and inventory should prioritize the top ten states in the country, with Dstrict of Columbia leading the group,followed by Connecticut, New Jersey, Maryland,Massachusetts, Virginia, California, New York, New Hamshire and Washington.
   These States rest above the country wide housesold income of $ 65.000, with Washington being on the last position out of our top 10 with an average househols income at $ 75.000 and District of Columbia at the top with $ 91.000.


## Deep Dive Analysis
-----

### Income Distribution:
- The income distribution shows a clear spread between lower-income territories and the highest-earning states, with Puerto Rico sitting at the bottom of the range and the strongest markets clustering well above the national mean.
- This suggests a meaningful concentration of purchasing power in a limited set of geographies.

### High Income States:
- The top 10 states all exceed the national average of roughly 65k, making them the most relevant geographies for premium market targeting.
- These states form the core market for the next stage of commercial prioritization.

### City-level Concentration:
- Within these 10 states, the strongest cities show average incomes starting at roughly 150k on the low end.This indicates that the opportunity is not evenly distributed across each state, but concentrated in select urban areas.

### Geographic Clustring:
- A notable clustering pattern appears on the East Coast, where 8 of the 10 high-income states are concentrated. The remaining 2 high-income states are on the West Coast, creating a secondary but important opportunity cluster.

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
