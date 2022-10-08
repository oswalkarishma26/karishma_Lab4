Select prod.PROD_ID, prod.PROD_NAME FROM `order` as ord
Inner join supplierpricing as  sp
on sp.PRICING_ID = ORD.PRICING_ID
inner join product as prod
ON prod.PROD_ID = sp.prod_ID
where ORD.ORD_DATE > '2021-10-05';