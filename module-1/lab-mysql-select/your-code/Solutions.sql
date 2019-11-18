select
authors.au_id, 
authors.au_lname, 
authors.au_fname, 
titles.title,
publishers.pub_name
from titles 
join publishers on titles.pub_id=publishers.pub_id
join titleauthor on titleauthor.title_id=titles.title_id
join authors on authors.au_id=titleauthor.au_id; 


select
authors.au_id, 
authors.au_lname, 
authors.au_fname, 
publishers.pub_name,
count (titles.title) as count_titles
from titles 
join publishers on titles.pub_id=publishers.pub_id
join titleauthor on titleauthor.title_id=titles.title_id
join authors on authors.au_id=titleauthor.au_id
group by publishers.pub_name, authors.au_id, authors.au_lname, authors.au_fname



select 
authors.au_id, 
authors.au_lname, 
authors.au_fname,
sum (sales.qty) as qty_sales
from sales
join titles on titles.title_id=sales.title_id
join titleauthor on titleauthor.title_id=titles.title_id
join authors on authors.au_id=titleauthor.au_id
group by authors.au_id, authors.au_lname, authors.au_fname
Order by qty_sales DESC
LIMIT 3


select 
authors.au_id, 
authors.au_lname, 
authors.au_fname,
sum (sales.qty) as qty_sales
from sales
join titles on titles.title_id=sales.title_id
join titleauthor on titleauthor.title_id=titles.title_id
join authors on authors.au_id=titleauthor.au_id
group by authors.au_id, authors.au_lname, authors.au_fname
Order by qty_sales DESC


