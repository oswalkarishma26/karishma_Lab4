
create table if not exists SupplierPricing(
	PRICING_ID int,
    primary key (PRICING_ID),
    PROD_ID int,
    SUPP_ID int,
    SUPP_PRICE int default 0,
    foreign key (PROD_ID) REFERENCES product (PROD_ID),
    foreign key (SUPP_ID) REFERENCES supplier(SUPP_ID)
);
    