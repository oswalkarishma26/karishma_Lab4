Select COUNT(t2.CUS_GENDER) as No_of_customer, t2.CUS_GENDER FROM
(select t1.CUS_ID, t1.CUS_NAME, t1.CUS_GENDER,t1.ORD_AMOUNT FROM
(Select  `order`.*, customer.CUS_NAME, customer.CUS_GENDER from `order`
Inner Join customer
on `order`.CUS_ID = customer.CUS_ID having `order`.ORD_AMOUNT >=3000) 
as t1
Group by t1.CUS_ID)
as t2
group by t2.CUS_gender;
