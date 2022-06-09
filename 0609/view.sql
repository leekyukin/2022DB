use madang;

show tables;

create view vw_Orders (orderid, custid, name, bookid, bookname, saleprice, orderdate)
as select od.orderid, od.custid, cs.name,
          od.bookid, bk.bookname, od.saleprice, od.orderdate
From Orders od, Customer cs, Book bk
WHERE od.custid=cs.custid AND od.bookid=bk.bookid;

select orderid, bookname, saleprice
from vw_Orders
WHERE name = '김연아';

select replace(name, substr(name,2,1), '*')
from vw_Orders;

select concat(substr(name, 1, 1), '*', substr(name, 3, length(name)-2))
from Customer;

desc book;

create view vw_book1
as select bookname, publisher, price
from book;

select bookname, publisher, price
from book  limit 5;

create view bw_book3
as select bookname, publisher, price
from book
order by price limit 5;
