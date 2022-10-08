select sup.SUPP_ID, SUPP_NAME,SUPP_CITY,SUPP_PHONE from supplier
AS sup
inner join
(Select * from supplierpricing group by SUPP_ID 
having count(SUPP_ID >0))
as SP
ON
sup.SUPP_ID  = SP.SUPP_ID;