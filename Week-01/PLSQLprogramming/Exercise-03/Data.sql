-- Exercise 3 : Stored Procedures

-- ============================
-- Creating Accounts Table
-- ============================

create table accounts (
   accountid    number primary key,
   customername varchar2(50),
   accounttype  varchar2(20),
   balance      number(10,2)
);

-- ============================
-- Creating Employees Table
-- ============================

create table employees (
   employeeid   number primary key,
   employeename varchar2(50),
   department   varchar2(30),
   salary       number(10,2)
);

-- ============================
-- Inserting Sample Data
-- ============================

insert into accounts values ( 101,
                              'Rahul',
                              'Savings',
                              10000 );
insert into accounts values ( 102,
                              'Priya',
                              'Savings',
                              25000 );
insert into accounts values ( 103,
                              'Amit',
                              'Current',
                              18000 );
insert into accounts values ( 104,
                              'Sneha',
                              'Savings',
                              30000 );
insert into accounts values ( 105,
                              'Rohan',
                              'Current',
                              15000 );

insert into employees values ( 1,
                               'John',
                               'IT',
                               50000 );
insert into employees values ( 2,
                               'David',
                               'HR',
                               45000 );
insert into employees values ( 3,
                               'Smith',
                               'IT',
                               60000 );
insert into employees values ( 4,
                               'Nancy',
                               'Finance',
                               55000 );
insert into employees values ( 5,
                               'Kevin',
                               'IT',
                               70000 );

commit;

-- Display Initial Data

select *
  from accounts;
select *
  from employees;

---------------------------------------------------------
-- Scenario 1
-- Procedure to add 1% monthly interest to savings accounts
---------------------------------------------------------

create or replace procedure processmonthlyinterest is
begin
   update accounts
      set
      balance = balance + ( balance * 0.01 )
    where accounttype = 'Savings';

   commit;
   dbms_output.put_line('Monthly interest added successfully.');
end;
/

   SET SERVEROUTPUT ON;

begin
   processmonthlyinterest;
end;
/

select *
  from accounts;

---------------------------------------------------------
-- Scenario 2
-- Procedure to update employee salary with bonus
---------------------------------------------------------

create or replace procedure updateemployeebonus (
   p_department varchar2,
   p_bonus      number
) is
begin
   update employees
      set
      salary = salary + ( salary * p_bonus / 100 )
    where department = p_department;

   commit;
   dbms_output.put_line('Bonus added successfully.');
end;
/

begin
   updateemployeebonus(
      'IT',
      10
   );
end;
/

select *
  from employees;

---------------------------------------------------------
-- Scenario 3
-- Procedure to transfer money between accounts
---------------------------------------------------------

create or replace procedure transferfunds (
   p_fromaccount number,
   p_toaccount   number,
   p_amount      number
) is
   v_balance number;
begin
   select balance
     into v_balance
     from accounts
    where accountid = p_fromaccount;

   if v_balance >= p_amount then
      update accounts
         set
         balance = balance - p_amount
       where accountid = p_fromaccount;

      update accounts
         set
         balance = balance + p_amount
       where accountid = p_toaccount;

      commit;
      dbms_output.put_line('Amount transferred successfully.');
   else
      dbms_output.put_line('Insufficient balance.');
   end if;

end;
/

begin
   transferfunds(
      102,
      105,
      5000
   );
end;
/

-- Display Final Data

select *
  from accounts;
select *
  from employees;