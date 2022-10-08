Call ServiceRating();


/*the datas entered in stored procedure is as below
-------------------------------------------------
/* select report.SUPP_ID, report.SUPP_NAME, report.Average,
CASE 
when  report.Average = 5 then "Excelent service"
when report.Average > 4 then "Good service"
when report.Average > 2 then "Average Service"
ELSE "Poor Service"
END as Service from
(
	Select final.supp_id, supplier.SUPP_NAME, final.Average from
	(
		Select test2.SUPP_ID, sum(test2.RAT_RATSTARS)/count(test2.RAT_RATSTARS) as  Average from
        (
			select supplierpricing.SUPP_ID, test.ORD_ID, test.RAT_RATSTARS from supplierpricing
			inner join
				( 
					select `order`.PRICING_ID, rating.ORD_ID,rating.RAT_RATSTARS from `order`
                    inner join
                    rating on rating.ORD_ID = `ORDER`.ORD_ID
                    ) as test on test.PRICING_ID = supplierpricing.PRICING_ID
				) as test2 group by supplierpricing.SUPP_ID
			) as final 
            inner join
            supplier  where final.SUPP_ID = supplier.SUPP_ID
		)AS report;