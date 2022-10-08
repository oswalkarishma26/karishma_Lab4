Create table  product (
	PROD_ID int PRIMARY KEY,
    PROD_NAME varchar(50) not null default "DUMMY",
	PROD_DESC varchar(50)not null,
    CAT_ID int,
    Foreign key (CAT_ID)   references  category(CAT_ID)
    );
    