CREATE TABLE customer (
    customer_id number NOT NULL primary key,
    first_name  VARCHAR2(20),
    last_name   VARCHAR2(20),
    Gender      VARCHAR2(20),
    phone_number  NUMBER  
);
INSERT INTO customer VALUES ('21225','Bryson','smithson','M','2233234');
INSERT INTO customer VALUES ('21226','Mani','Bains','M','2233235');
INSERT INTO customer VALUES ('21227','Kara','lena','F','2233236');
INSERT INTO customer VALUES ('21228','Shashi','Lnu','F','2233237');
INSERT INTO customer VALUES ('21229','Prince','Sr','M','2233238');
INSERT INTO customer VALUES ('21230','john','kell','M','2233239');
INSERT INTO customer VALUES ('21231','harry','Peter','M','2233240');
INSERT INTO customer VALUES ('21232','Ramesh','Kumar','M','2233241');
INSERT INTO customer VALUES ('21233','David','Cooper','M','2233242');
INSERT INTO customer VALUES ('21234','Steve','Duck','M','2233243');
INSERT INTO customer VALUES ('21235','Henry','Persic','M','2233244');

select * from customer;

CREATE TABLE Booking (
    Booking_id       INTEGER NOT NULL primary key,
    Book_type        VARCHAR2(20),
    Book_date        VARCHAR2(20),
    Customer_id      number  ,
    
    FOREIGN key(customer_id) references customer
);

INSERT INTO Booking VALUES ('31311','Third_Party','01/01/2021','21225');
INSERT INTO Booking VALUES ('31312','Direct','01/01/2021','21226');
INSERT INTO Booking VALUES ('31313','Direct','01/03/2021','21227');
INSERT INTO Booking VALUES ('31314','Third_Party','01/08/2021','21228');
INSERT INTO Booking VALUES ('31315','Third_Party','01/10/2021','21229');
INSERT INTO Booking VALUES ('31316','Direct','01/15/2021','21230');
INSERT INTO Booking VALUES ('31317','Direct','01/17/2021','21231');
INSERT INTO Booking VALUES ('31318','Third_Party','01/20/2021','21232');
INSERT INTO Booking VALUES ('31319','Direct','01/22/2021','21233');
INSERT INTO Booking VALUES ('31320','Third_Party','01/30/2021','21234');
INSERT INTO Booking VALUES ('31321','Direct','02/08/2021','21235');


select * from booking;


CREATE TABLE Reservation (
    Res_id          number NOT NULL primary key,
    check_in_date   varchar(20),
    check_out_date   varchar(20),
    No_of_days      number,
    Customer_id      number  ,
    Booking_id       INTEGER,
    FOREIGN key(customer_id) references customer,
    FOREIGN key(booking_id) references booking
);

--drop table Reservation;

INSERT INTO Reservation VALUES ('1001','01/03/2021','01/05/2021','2','21225','31311');
INSERT INTO Reservation VALUES ('1002','01/01/2021','01/02/2021','1','21226','31312');
INSERT INTO Reservation VALUES ('1003','01/03/2021','01/05/2021','2','21227','31313');
INSERT INTO Reservation VALUES ('1004','01/09/2021','01/12/2021','3','21228','31314');
INSERT INTO Reservation VALUES ('1005','01/11/2021','01/12/2021','1','21229','31315');
INSERT INTO Reservation VALUES ('1006','01/15/2018','01/16/2021','1','21230','31316');
INSERT INTO Reservation VALUES ('1007','01/17/2018','01/18/2021','1','21231','31317');
INSERT INTO Reservation VALUES ('1008','01/20/2018','01/22/2021','2','21232','31318');
INSERT INTO Reservation VALUES ('1009','01/22/2018','01/23/2021','1','21233','31319');
INSERT INTO Reservation VALUES ('1010','01/30/2018','01/31/2021','1','21234','31320');
INSERT INTO Reservation VALUES ('1011','02/08/2018','02/09/2021','1','21235','31321');

select *from Reservation;

select check_out_date, customer_id from reservation;

CREATE TABLE Room (
    Room_no         INTEGER NOT NULL ,
    Room_type        varchar(20),
    Bed_type         varchar(20),
    No_of_occupants   number,
    Room_price        number,
    Customer_id       number,
    res_id            number,
   
    FOREIGN key(customer_id) references Customer,
    FOREIGN key(res_id) references Reservation
);

INSERT INTO Room VALUES ('101','Standard','Queen','1','80','21225','1001');
INSERT INTO Room VALUES ('504','President','King','2','190','21226','1002');
INSERT INTO Room VALUES ('402','Executive','Queen','2','130','21227','1003');
INSERT INTO Room VALUES ('404','Executive','Queen','1','110','21228','1004');
INSERT INTO Room VALUES ('408','Executive','Queen','2','110','21229','1005');
INSERT INTO Room VALUES ('401','Executive','Queen','2','130','21230','1006');
INSERT INTO Room VALUES ('409','Executive','Queen','2','130','21231','1007');
INSERT INTO Room VALUES ('402','Executive','Queen','2','110','21232','1008');
INSERT INTO Room VALUES ('504','President','King','2','190','21233','1009');
INSERT INTO Room VALUES ('103','Standard','Queen','1','80','21234','1010');
INSERT INTO Room VALUES ('108','Standard','Queen','1','100','21235','1011');

select *from room;

CREATE TABLE Address (
    Street             varchar(30),
    City              varchar(30),
    State        varchar(30),
    Country             varchar(20),
    Customer_id                   number  ,
    Zip_code                     number,
    FOREIGN key(customer_id) references Customer
);

INSERT INTO Address VALUES ('22 Oak Street','San Diego','CA','US','21225','92123');
INSERT INTO Address VALUES ('22 Jump Street','Los Angeles','CA','US','21226','91123');
INSERT INTO Address VALUES ('31 Hill Avenue','San Francisco','CA','US','21227','95126');
INSERT INTO Address VALUES ('44 Areo drive','Phonenix','AZ','US','21228','92123');
INSERT INTO Address VALUES ('29 What Street','San Diego','CA','US','21229','92123');
INSERT INTO Address VALUES ('550 Upas Street','New York','NY','US','21230','92123');
INSERT INTO Address VALUES ('123 Summer Lane','Birmingham','AL','US','21231','91123');
INSERT INTO Address VALUES ('4513 Pineville Road','Chicago','IL','US','21232','95126');
INSERT INTO Address VALUES ('987 Bubbly Lane','Baltimore','MD','US','21233','92133');
INSERT INTO Address VALUES ('555 Elwood Way','Los Angeles','CA','US','21234','92134');
INSERT INTO Address VALUES ('2102 Laurelhurst Drive','Eugene','OR','US','21235','92123');


select *From Address;

create TABLE Invoice (
    Invoice_No         INTEGER NOT NULL primary key,
    Res_id           integer,
    customer_id     number,

    FOREIGN key(res_id) references reservation,
  
    FOREIGN key(customer_id) references Customer   
);

INSERT INTO Invoice VALUES ('2121','1001','21225');
INSERT INTO Invoice VALUES ('2122','1002','21226');
INSERT INTO Invoice VALUES ('2123','1003','21227');
INSERT INTO Invoice VALUES ('2124','1004','21228');
INSERT INTO Invoice VALUES ('2125','1005','21229');
INSERT INTO Invoice VALUES ('2126','1006','21230');
INSERT INTO Invoice VALUES ('2127','1007','21231');
INSERT INTO Invoice VALUES ('2128','1008','21232');
INSERT INTO Invoice VALUES ('2129','1009','21233');
INSERT INTO Invoice VALUES ('2130','1010','21234');
INSERT INTO Invoice VALUES ('2131','1011','21235');


--drop table Invoice;

select *from invoice;

CREATE TABLE Services (
    Service_id         INTEGER NOT NULL primary key,
    Service_type             varchar(20),
  Service_cost       number
);

INSERT INTO services VALUES ('55201','spa','60');
INSERT INTO services VALUES ('55202','Laundary','30');
INSERT INTO services VALUES ('55203','Breakfast','30');
INSERT INTO services VALUES ('55204','Lunch','40');
INSERT INTO services VALUES ('55205','Dinner','60');

select * from services;

create TABLE line (
    Invoice_No        INTEGER ,
    Service_id             integer,
   Service_quantityy     number,
   res_id               number,
   FOREIGN key(Service_id ) references Services ,
   FOREIGN key(Invoice_No) references Invoice ,
   FOREIGN key(res_id ) references Reservation 
   );
INSERT INTO line VALUES ('2121','55201','1','1001');
INSERT INTO line VALUES ('2122','55205','2','1002');
INSERT INTO line VALUES ('2123','55202','1','1003');
INSERT INTO line VALUES ('2124','55203','1','1004');
INSERT INTO line VALUES ('2125','55204','1','1005');
INSERT INTO line VALUES ('2126','55201','1','1006');
INSERT INTO line VALUES ('2127','55205','2','1007');
INSERT INTO line VALUES ('2128','55202','1','1008');
INSERT INTO line VALUES ('2129','55203','1','1009');
INSERT INTO line VALUES ('2130','55205','1','1010');
INSERT INTO line VALUES ('2131','55203','1','1011');

--drop table line;
select *from line;

CREATE TABLE transactions (
    Trans_No         number NOT NULL primary key,
    Payment_Method            varchar(20),
    Payment_Date            varchar(20),
    Invoice_no            integer,
    Customer_id       number,
    
    FOREIGN key(invoice_no) references Invoice,
    FOREIGN key(customer_id) references Customer   
);

INSERT INTO transactions VALUES ('222444','cash','01/05/2021','2121','21225');
INSERT INTO transactions VALUES ('222445','credit_card','01/02/2021','2122','21226');
INSERT INTO transactions VALUES ('222446','Debit_card','01/05/2021','2123','21227');
INSERT INTO transactions VALUES ('222447','credit_card','01/12/2021','2124','21228');
INSERT INTO transactions VALUES ('222449','cash','01/12/2021','2125','21229');
INSERT INTO transactions VALUES ('222450','Debit_card','01/16/2021','2126','21230');
INSERT INTO transactions VALUES ('222451','cash','01/18/2021','2127','21231');
INSERT INTO transactions VALUES ('222452','cash','01/22/2021','2128','21232');
INSERT INTO transactions VALUES ('222453','cash','01/23/2021','2129','21233');
INSERT INTO transactions VALUES ('222454','credit_card','01/31/2021','2130','21234');
INSERT INTO transactions VALUES ('222455','credit_card','02/09/2021','2131','21235');

select *from transactions;

CREATE TABLE Satisfaction (
    Satisfaction_ID         INTEGER,
    Satisfaction_level            number,
    Trans_no       number,
    
    FOREIGN key(Trans_no) references Transactions 

);

INSERT INTO Satisfaction VALUES ('001','4','222444');
INSERT INTO Satisfaction VALUES ('002','5','222445');
INSERT INTO Satisfaction VALUES ('003','3','222446');
INSERT INTO Satisfaction VALUES ('004','2','222447');
INSERT INTO Satisfaction VALUES ('006','3','222449');
INSERT INTO Satisfaction VALUES ('007','2','222450');
INSERT INTO Satisfaction VALUES ('008','1','222451');
INSERT INTO Satisfaction VALUES ('009','2','222452');
INSERT INTO Satisfaction VALUES ('010','3','222453');
INSERT INTO Satisfaction VALUES ('011','4','222454');
INSERT INTO Satisfaction VALUES ('012','3','222455');

select *from Satisfaction;
 
--drop table 
commit;
rollback;

--Projection , Selcetion 
select first_name, last_name,Gender ,check_in_date ,check_out_date
from customer ,Reservation
where customer.customer_id = Reservation.Customer_id and Gender = 'M';

select first_name, last_name,Gender,Bed_type,Room_no
from customer ,Room
where customer.customer_id = Room.Customer_id and Gender = 'F';

--Upadate , alter
alter table Line rename to Service_quantityy;
update Services set Service_cost = '100' where Service_id = '55201';
update Satisfaction set Satisfaction_level = '5' where Satisfaction_level = '1';

select *from Services;
select *from Satisfaction;

--Aggregate Function
select count(customer_id) From  customer;
select MIN(Satisfaction_level) from Satisfaction;
select MAX(Satisfaction_level) from Satisfaction;
select AVG(Satisfaction_level) from Satisfaction;

--Union Intersection Minus
select Payment_Method , Payment_Date, Invoice_no from transactions UNION select first_name, last_name,customer_id from Customer;
select Payment_Method , Payment_Date, Invoice_no from transactions UNION select first_name, last_name,customer_id from Customer;
select Payment_Method , Payment_Date, Invoice_no from transactions MINUS select first_name, last_name,customer_id from Customer;

--Joins
select *from Room  inner join Reservation on No_of_occupants = No_of_days;    
select *from Satisfaction left join line  on Service_quantityy = Satisfaction_level;    
select *from Satisfaction right join line  on Service_quantityy = Satisfaction_level;    
select *from Satisfaction full outer join line  on Service_quantityy = Satisfaction_level;    

 
 
