
insert into product values (	'1', "GTA V", "Windows 7 and above with i5 processor and 8GB RAM", (SELECT CAT_ID from category where CAT_NAME = 'GAMES'));
insert into product values(	'2', "T-SHIRT", "SIZE-L with Black, Blue and White variations", (SELECT CAT_ID from category where CAT_NAME = 'CLOTHES'));
insert into product values(  '3',"ROG LAPTOP","Windows 10 with 15inch screen,i7 processor,1TB SSD", (SELECT CAT_ID from category where CAT_NAME = 'ELECTRONICS'));
insert into product values(	'4',"OATS","Highly Nutritious from Nestle",(SELECT CAT_ID from category where CAT_NAME = 'GROCERIES'));
insert into product values(	'5',"HARRY POTTER","Best Collection of all time by J.K Rowling",(SELECT CAT_ID from category where CAT_NAME = 'BOOKS'));
insert into product values(	'6',"MILK","1L Toned MIlk",(SELECT CAT_ID from category where CAT_NAME = 'GROCERIES'));
insert into product values(	'7',"Boat EarPhones","1.5Meter long Dolby Atmos",(SELECT CAT_ID from category where CAT_NAME = 'ELECTRONICS'));
insert into product values(	'8',"Jeans","Stretchable Denim Jeans with various sizesandcolor",(SELECT CAT_ID from category where CAT_NAME = 'CLOTHES'));
insert into product values( 	'9',"Project IGI","compatible with windows 7 and above",(SELECT CAT_ID from category where CAT_NAME = 'GAMES'));
insert into product values(	'10',"Hoodie","Black GUCCI for 13 yrs and above",(SELECT CAT_ID from category where CAT_NAME = 'CLOTHES'));
insert into product values(	'11',"Rich Dad Poor Dad","Written by RObert Kiyosaki",(SELECT CAT_ID from category where CAT_NAME = 'BOOKS'));
insert into product values(	'12',"Train Your Brain","By Shireen Stephen",(SELECT CAT_ID from category where CAT_NAME = 'BOOKS'));

