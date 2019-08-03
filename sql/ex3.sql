

use DB;
select * from Book;
SELECT * FROM PUBLISHER;
create table author (a_id int(100),author varchar(100),state varchar(100),city varchar(100),pincode int(10),phno int(10),url varchar(100));
insert into author values (2,"CraigFederighi","usa","CA","125","3124","www.cfi.com"),(3,"Bob tabor","usa","CA","145","3624","www.bt.com"),(4,"HerbertSchidt","usa","ny","178","7676","www.hs.com"),(5,"Phill schiller","usa","CA","754","3564","www.ps.com"),(6,"Phillip","uk","CA","784","3566","www.pp.com");
select * from author;
select author,a_id,url,p_name  from Book,Author,publisher where Book.title="C#" and  a_id=p_id and pubs_id=p_id;
alter table Publisher RENAME COLUMN pub_id TO pubs_id;
create table authorbook (a_id int (100),isbn int(100));
insert into authorbook values (2,12),(3,13),(4,14),(5,15),(6,16);
select * from authorbook;
create table review (r_id int(100),isbn int(100),rating int(100));




insert into review values (2,12,10),(3,13,9),(4,14,10),(5,15,10),(6,16,8);
select * from review;

/*1*/
select city,phno,url from author where author="Bob tabor";
/*2*/
select p_name,address,phno from publisher where state="TN";
/*3*/
select title,price  from book where pg>1000;
/*4*/
select isbn,title,price from book where catog="coding";
/*5*/
select title,price from book,publisher where p_name="Apple" and pubs_id=p_id;
/*6*/
select title,r_id,rating from review,book where r_id=p_id;
/*7*/
select a_id,author,url,catog  from author inner join book where a_id=p_id;
/*8*/
select   title,price,author,url from author join book join publisher where a_id=pubs_id and pubs_id=p_id;
/*9*/

update book set price=price*10 where price>0 ;
/*10*/


/*11*/
select max(price),catog from book where catog="coding";
select min(price),catog from book where catog="coding";
select avg(price),catog from book where catog="coding";
/*12*/


/*13*/


/*14*/ 
select * from publisher where state="TN";
/*15*/
select * from book where title like 'C%';
/*16*/
select * from author where city="CA";
/*any:RETURN TRUE WHEN ANY ONE OF THE INNER SUB QUERY RETURNS TRUE AND EXCECUTE THE OUTER QUERY IF FALSE THE IT DOES NOT  EXCECUTE THE OUTER QUERY*/
select * from book where price  = any( select price from book where catog="appDEV");
/*exists:RETURN TRUE WHEN THE CONTENT IN SUBQUERY CONTENT EXIST AND EXCECUTE THE OUTER QUERY IF CONTENT DOES NOT EXIST THEN RETURN FALSE AND OUTER QUERY DOES NOT EXCECUTE*/
select * from book where  exists (select *  from book where catog="coding");
/*not exists:IT NEGATES THE VALUE RETURNED BY EXISTS STATEMENT*/
select * from book where  not exists (select * from book where catog="xcsd");






