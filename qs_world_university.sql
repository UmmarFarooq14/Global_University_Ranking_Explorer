use qsranking;
show databases;
alter table `qs world university rankings 2025 (top global universities)` rename to qs_world_university;
select * from qs_world_university;
show columns from qs_world_university;

-- If I want show how many Institution are there based on Region.

select  count(Institution_Name) as Institution_Name, Location, Region from qs_world_university
group by Location, Region;

-- Top universities in world
select Institution_Name, Location, Region from qs_world_university
limit 5;

-- Based on Asia Region top 5 University
select Institution_Name, Location, Region, RANK_2025, RANK_2024 from qs_world_university
where Region="Asia"
Limit 5;

select Institution_Name, Location, Region, International_Research_Network_Score, International_Research_Network_Rank from qs_world_university
where International_Research_Network_Rank  > 150 and International_Research_Network_Score > 91 
order by International_Research_Network_Rank desc;

select * from qs_world_university
where Overall_Score > 95
order by Overall_Score desc;


