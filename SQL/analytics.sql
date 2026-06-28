USE cyber_intelligence;

-- 1. What are our biggest threats? (Most Common Cyber Crimes)
-- We need this to figure out which types of attacks keep happening 
-- and how much money victims are losing to them. Great for a main bar chart.

SELECT 
    crime_type, 
    crime_subtype, 
    COUNT(*) AS total_cases,
    SUM(financial_loss_usd) AS total_financial_loss_usd
FROM cyber_cases
GROUP BY crime_type, crime_subtype
ORDER BY total_cases DESC
LIMIT 5;


-- 2. Where are attacks happening most? (Crime Hotspots)
-- This joins our cases with city profiles so we can pinpoint 
-- high-risk areas. Perfect for plotting interactive points on a map.

SELECT 
    l.city_name, 
    l.state, 
    l.region, 
    COUNT(c.case_id) AS reported_cases,
    SUM(c.financial_loss_usd) AS total_damages_usd,
    l.risk_category
FROM cyber_cases c
JOIN locations l ON c.city_id = l.city_id
GROUP BY l.city_name, l.state, l.region, l.risk_category
ORDER BY reported_cases DESC;


-- 3. Who are our repeat offenders?
-- This lets us track threat actors or hacker groups who show up 
-- in more than one active case, showing their total damage and arrest status.

SELECT 
    s.alias, 
    s.known_affiliations, 
    s.skill_level,
    s.arrest_status, 
    COUNT(c.case_id) AS linked_cases,
    SUM(c.financial_loss_usd) AS total_calculated_damage_usd
FROM cyber_cases c
JOIN suspects s ON c.suspect_id = s.suspect_id
GROUP BY s.alias, s.known_affiliations, s.skill_level, s.arrest_status
HAVING linked_cases >= 1
ORDER BY linked_cases DESC, total_calculated_damage_usd DESC;


-- 4. How efficient are our investigators? (Case Solving Rate)
-- A quick performance check to see how many assigned cases each officer 
-- has actually wrapped up, along with their average turnaround time.

SELECT 
    i.full_name, 
    i.rank, 
    i.specialization, 
    i.cases_assigned, 
    i.cases_solved,
    ROUND((i.cases_solved * 100.0 / i.cases_assigned), 2) AS success_rate_percentage,
    i.avg_resolution_days
FROM investigators i
ORDER BY success_rate_percentage DESC;