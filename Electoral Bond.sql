#Q1.Who has contributed more funds to political parties? 
select `Name of the Purchaser`, sum(denominations) as `Total Amount`
from purchaser
group by `Name of the Purchaser`
order by `Total Amount` desc
limit 5;

#Q2.Top 5 parties dominate fundraising, leading in financial strength.
select `Name of the Political Party`, sum(denominations) as `Total Amount`
from buyer
group by `Name of the Political Party`
order by `Total Amount` desc
limit 5;

#Q3.Company/person donated higher amount to the political party fund.
select p.`Name of the Purchaser`, b.`Name of the Political Party`,
sum(p.Denominations) as `Total Amount`
from buyer b
inner join purchaser p on b.`Bond Number` = p.`Bond Number`
group by `Name of the Purchaser`, `Name of the Political Party`
order by `Total Amount` desc
limit 10;

#Q4.Which party garnered the majority of bond support?
select distinct `Name of the Political Party`, 
`Account no. of Political Party`,
count(`Name of the Political Party`) as `Count of Bond`
from buyer
group by `Name of the Political Party`,`Account no. of Political Party`
order by `Count of Bond` desc
limit 5;

#Q5.Quantify of donations: thousands, lakhs, crores, simplifying the count elegantly.
select prefix,count(denominations) as count, sum(denominations) as `Total Amount`
from buyer
group by Prefix;

#Q6.Top 10 dates with the highest fundraising in recorded 
select `Date of Encashment`, count(`Date of Encashment`) as count
from buyer
group by  `Date of Encashment`
order by count desc
limit 10;

#Q7.Identify which branch receives more donations
select `pay branch code`, count(`pay branch code`) as count
from buyer
group by  `pay branch code`
order by count desc
limit 5;

