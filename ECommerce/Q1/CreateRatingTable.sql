create table if not exists rating (
	RAT_ID int,
    primary key (RAT_ID),
    ORD_ID int,
    foreign key (ORD_ID) references `order` (ORD_ID),
    RAT_RATSTARS int not null
);
