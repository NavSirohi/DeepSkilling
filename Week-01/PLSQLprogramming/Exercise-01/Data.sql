create table customers (
   customerid number primary key,
   name       varchar2(50),
   age        number,
   balance    number(12,2),
   isvip      varchar2(5)
);
create table loans (
   loanid       number primary key,
   customerid   number,
   interestrate number(5,2),
   duedate      date,
   constraint fk_customer foreign key ( customerid )
      references customers ( customerid )
);
insert into customers values ( 101,
                               'Rahul',
                               65,
                               15000,
                               'FALSE' );
insert into customers values ( 102,
                               'Priya',
                               45,
                               12000,
                               'FALSE' );
insert into customers values ( 103,
                               'Amit',
                               70,
                               8000,
                               'FALSE' );
insert into customers values ( 104,
                               'Sneha',
                               30,
                               5000,
                               'FALSE' );
insert into customers values ( 105,
                               'Rohan',
                               62,
                               25000,
                               'FALSE' );

commit;
insert into loans values ( 201,
                           101,
                           10,
                           sysdate + 15 );
insert into loans values ( 202,
                           102,
                           11,
                           sysdate + 40 );
insert into loans values ( 203,
                           103,
                           9,
                           sysdate + 20 );
insert into loans values ( 204,
                           104,
                           12,
                           sysdate + 60 );
insert into loans values ( 205,
                           105,
                           8,
                           sysdate + 25 );

commit;
select *
  from customers;

select *
  from loans;