
select * from customers where phone = '01710656237' and like 'S%'

select * from customers cs inner join orders o on cs.id = o.customer_id where phone = '01710656237'
