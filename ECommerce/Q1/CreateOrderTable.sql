create table if not exists `order`(
	ORD_ID int,
    primary key (ORD_ID),
    ORD_AMOUNT int not null,
    ORD_DATE date not null,
    CUS_ID int,
    foreign key (CUS_ID) references customer (CUS_ID),
    PRICING_ID int,
    foreign key (PRICING_ID) references supplierpricing(PRICING_ID)
);
