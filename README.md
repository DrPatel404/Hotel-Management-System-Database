# Hotel-Management-System-Database
Hey👋! 

Objectives of the project: - 

To integrate reservation, billing, and services.  

The following attributes, I have considered before designing the initial view of the database system: 

1) CustomerID 
2) ReservationID 
3) Check_in_date 
4) Check_out_date 
5) Booking_date 
6) Room_number 
7) Room_type 
8) Room_Price 
9) ServiceID 
10) Service_name 
11) Service_date 
12) Service_cost 
13) Service_quantity  
14) Payment_method 
15) Payment_date 
16) Customer_name 
17) Customer_address 
18) Customer_phone_number 
19) Loyalty_number 
20) Satisfaction level 

Pain points of management of a hotel are as follows – 

The hotel has a different department like billing, room service, other services, reservations, loyalty card etc. and these departments don’t have an integrated system to know customer information/transactions at a single window.  

Hotel is not able to properly understand customer purchase and services behavior over time. 

With the help of this data model, we are trying to solve the above-mentioned problem by creating an integrated system to manage all services in the hotel. This will also help to understand customer behavior. 

Rules📜:- 

In one reservation customer can use none or multiple services 

In one reservation customer can book one or multiple rooms 

In one reservation is linked with only one customer 

One reservation can have one or multiple billing  

One customer will have none or one loyalty card 

One customer can have one or multiple reservations 

One room can be linked with one or multiple reservations (depends on check-in/check-out dates) 

One billing can only belong to only one customer 

One service can be used by none or multiple customers 

One loyalty card can be linked to only one customer 

Business Requirements: - 

To ease booking by having real-time room availability information at booking counter/ another medium of the booking. 

The centralized billing system in the hotel  

To understand the customer behavior by using loyalty card information 

We will use the ER model techniques to solve this problem. The tables are as follows: - 

1) Customer 

2) Reservations 

3) Rooms 

4) Billings 

5) Services 

6) Loyalty 
