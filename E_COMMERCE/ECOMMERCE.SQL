create database ecommerce;
use ecommerce;


create table supplier(
	supp_id int(10),
	supp_name varchar(50) not null,
	supp_city varchar (50) not null,
	supp_phone varchar (50) not null,
primary key (supp_id)
);

select * from supplier;

create table customer(
	cus_id int (10) not null auto_increment,
	cus_name varchar (20) not null,
	cus_phone varchar (10) not null,
	cus_city varchar(30) not null,
	cus_gender char,
    
primary key (cus_id)
);
select * from customer;

create table category(
	cat_id int(10),
	cat_name varchar (20) not null,
    
primary key (cat_id)
);
select * from category;

create table product(
	pro_id int(10),
	pro_name varchar (20) not null default "dummy",
  pro_desc varchar (60),
  cat_id int(10),
    
primary key (pro_id),
foreign key (cat_id) references category (cat_id)
);
select * from product;

create table supplier_pricing(
		supplier_pricing_id int,
		pro_id int (10),
		supp_id int (10),
		supp_price int default 0,
    
    
    primary key (supplier_pricing_id),
    foreign key (pro_id) references product(pro_id),
    foreign key (supp_id) references supplier(supp_id)
    );
    
    
create table `order` (
	order_id int (10),
	order_amount int not null,
	order_date date not null,

	cus_id int (10),
	supplier_pricing_id int,

primary key (order_id),
foreign key (cus_id) references customer(cus_id),
foreign key (supplier_pricing_id) references supplier_pricing(supplier_pricing_id) 

);


create table rating(
	rat_id int,
    
    order_id int (10),
    rat_ratstars int not null,
    primary key (rat_id),

foreign key (order_id) references `order`(order_id)
);

INSERT INTO SUPPLIER VALUES(1,"Rajesh Retails","Delhi",'1234567890');
INSERT INTO SUPPLIER VALUES(2,"Appario Ltd.","Mumbai",'2589631470');
INSERT INTO SUPPLIER VALUES(3,"Knome products","Banglore",'9785462315');
INSERT INTO SUPPLIER VALUES(4,"Bansal Retails","Kochi",'8975463285');
INSERT INTO SUPPLIER VALUES(5,"Mittal Ltd.","Lucknow",'7898456532');

INSERT INTO CUSTOMER VALUES(1,"AAKASH",'9999999999',"DELHI",'M');
INSERT INTO CUSTOMER VALUES(2,"AMAN",'9785463215',"NOIDA",'M');
INSERT INTO CUSTOMER VALUES(3,"NEHA",'9999999999',"MUMBAI",'F');
INSERT INTO CUSTOMER VALUES(4,"MEGHA",'9994562399',"KOLKATA",'F');
INSERT INTO CUSTOMER VALUES(5,"PULKIT",'7895999999',"LUCKNOW",'M');

INSERT INTO CATEGORY VALUES( 1,"BOOKS");
INSERT INTO CATEGORY VALUES(2,"GAMES");
INSERT INTO CATEGORY VALUES(3,"GROCERIES");
INSERT INTO CATEGORY VALUES (4,"ELECTRONICS");
INSERT INTO CATEGORY VALUES(5,"CLOTHES");

INSERT INTO PRODUCT VALUES(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",2);
INSERT INTO PRODUCT VALUES(2,"TSHIRT","SIZE-L with Black, Blue and White variations",5);
INSERT INTO PRODUCT VALUES(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",4);
INSERT INTO PRODUCT VALUES(4,"OATS","Highly Nutritious from Nestle",3);
INSERT INTO PRODUCT VALUES(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",1);
INSERT INTO PRODUCT VALUES(6,"MILK","1L Toned MIlk",3);
INSERT INTO PRODUCT VALUES(7,"Boat EarPhones","1.5Meter long Dolby Atmos",4);
INSERT INTO PRODUCT VALUES(8,"Jeans","Stretchable Denim Jeans with various sizes and color",5);
INSERT INTO PRODUCT VALUES(9,"Project IGI","compatible with windows 7 and above",2);
INSERT INTO PRODUCT VALUES(10,"Hoodie","Black GUCCI for 13 yrs and above",5);
INSERT INTO PRODUCT VALUES(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",1);
INSERT INTO PRODUCT VALUES(12,"Train Your Brain","By Shireen Stephen",1);

INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2,3,5,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3,5,1,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4,2,3,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5,4,1,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6,12,2,780);
INSERT INTO SUPPLIER_PRICING VALUES(7,12,4,789);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9,1,5,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10,4,2,999);
INSERT INTO SUPPLIER_PRICING VALUES(11,7,3,549);
INSERT INTO SUPPLIER_PRICING VALUES(12,7,4,529);
INSERT INTO SUPPLIER_PRICING VALUES(13,6,2,105);
INSERT INTO SUPPLIER_PRICING VALUES(14,6,1,99);
INSERT INTO SUPPLIER_PRICING VALUES(15,2,5,2999);
INSERT INTO SUPPLIER_PRICING VALUES(16,5,2,2999);

INSERT INTO `ORDER` VALUES (101,1500,"2021-10-06",2,1);
INSERT INTO `ORDER` VALUES(102,1000,"2021-10-12",3,5);
INSERT INTO `ORDER` VALUES(103,30000,"2021-09-16",5,2);
INSERT INTO `ORDER` VALUES(104,1500,"2021-10-05",1,1);
INSERT INTO `ORDER` VALUES(105,3000,"2021-08-16",4,3);
INSERT INTO `ORDER` VALUES(106,1450,"2021-08-18",1,9);
INSERT INTO `ORDER` VALUES(107,789,"2021-09-01",3,7);
INSERT INTO `ORDER` VALUES(108,780,"2021-09-07",5,6);
INSERT INTO `ORDER` VALUES(109,3000,"2021-09-10",5,3);
INSERT INTO `ORDER` VALUES(110,2500,"2021-09-10",2,4);
INSERT INTO `ORDER` VALUES(111,1000,"2021-09-15",4,5);
INSERT INTO `ORDER` VALUES(112,789,"2021-09-16",4,7);
INSERT INTO `ORDER` VALUES(113,31000,"2021-09-16",1,8);
INSERT INTO `ORDER` VALUES(114,1000,"2021-09-16",3,5);
INSERT INTO `ORDER` VALUES(115,3000,"2021-09-16",5,3);
INSERT INTO `ORDER` VALUES(116,99,"2021-09-17",2,14);

INSERT INTO RATING VALUES(1,101,4);
INSERT INTO RATING VALUES(2,102,3);
INSERT INTO RATING VALUES(3,103,1);
INSERT INTO RATING VALUES(4,104,2);
INSERT INTO RATING VALUES(5,105,4);
INSERT INTO RATING VALUES(6,106,3);
INSERT INTO RATING VALUES(7,107,4);
INSERT INTO RATING VALUES(8,108,4);
INSERT INTO RATING VALUES(9,109,3);
INSERT INTO RATING VALUES(10,110,5);
INSERT INTO RATING VALUES(11,111,3);
INSERT INTO RATING VALUES(12,112,4);
INSERT INTO RATING VALUES(13,113,2);
INSERT INTO RATING VALUES(14,114,1);
INSERT INTO RATING VALUES(15,115,1);
INSERT INTO RATING VALUES(16,116,0);


select co.cus_gender as "Gender", count(co.cus_gender) as "Total Number of Customers" 
 from
 (select c.cus_id, 
c.cus_gender
from customer as c, `order` as o 
where c.cus_id = o.cus_id and o.order_amount>=3000 group by c.cus_id, 
c.cus_gender) as co  
group by co.cus_gender, co.cus_gender;

select odr.cus_id, odr.order_id, odr.order_amount, odr.order_date,pr.pro_name
from `order` as odr
inner join supplier_pricing as sp 
inner join product as pr 
on (odr.supplier_pricing_id = sp.supplier_pricing_id and sp.pro_id = pr.pro_id) where odr.cus_id=2;

select spi.*, count(splid.supp_id) as "Number of Order Count"
from supplier as spi, supplier_pricing as splid 
where spi.supp_id = splid.supp_id 
group by spi.supp_id, spi.supp_city, splid.supp_id having count(splid.supp_id)> 1;

select P_SP.* from category C
inner join (
select P.cat_id, P.pro_id, P.pro_name, Minimal_Product_Price from product P inner join (
select pro_id, min(SUPP_PRICE) Minimal_Product_Price from supplier_pricing
group by pro_id
) as SP
on p.PRO_ID = SP.PRO_ID
) as P_SP 
ON (C.CAT_ID = P_SP.CAT_ID);

select prd.pro_id, prd.pro_name
from product as prd
inner join supplier_pricing as s_pr 
inner join `order` as ordr 
on ( prd.pro_id = s_pr.pro_id and ordr.supplier_pricing_id = s_pr.supplier_pricing_id)
where ordr.order_date>= '2021-10-05'
group by prd.pro_id;

SELECT cr.cus_name, cr.cus_gender
	from customer as cr
    where (cr.cus_name like 'A%' || cr.cus_name like '%A');

select supp_id, supp_name, AverageRatings,
CASE
	  WHEN AverageRatings = 5 THEN 'Excellent Service'
    WHEN AverageRatings > 4 THEN 'Good Service'
    WHEN AverageRatings >3 THEN 'Average Service'
    
    ELSE 'Poor Service'
END as ServiceType
from 
    (select spl.supp_id, spl.supp_name, avg(r.rat_ratstars) as 'AverageRatings'
from supplier as spl
	  inner join supplier_pricing as sp on spl.supp_id = sp.supp_id
    inner join `order` as o on sp.supplier_pricing_id = o.supplier_pricing_id
    inner join rating as r on o.order_id = r.order_id group by spl.supp_id
) as ratings;

call AverageRatingDetailsOfSuppliers();
