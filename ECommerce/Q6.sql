Select category.CAT_ID, category.CAT_NAME, min(t3.MIN_PRICE) 
as MIN_PRICE
from category
inner join
	(Select product.CAT_ID, product.PROD_NAME, t2.* 
	From product
	Inner join
		(Select PROD_ID, MIN(SUPP_PRICE) as MIN_PRICE
		from supplierpricing group by PROD_ID) as t2 where t2.PROD_ID = product.PROD_ID)
		as t3 where t3.CAT_ID = category.CAT_ID
group by t3.CAT_ID;