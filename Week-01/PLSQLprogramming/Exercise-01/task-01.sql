   SET SERVEROUTPUT ON;

begin
   for rec in (
      select l.loanid,
             c.age
        from customers c
        join loans l
      on c.customerid = l.customerid
   ) loop
      if rec.age > 60 then
         update loans
            set
            interestrate = interestrate - 1
          where loanid = rec.loanid;

         dbms_output.put_line('1% Discount Applied to Loan ID : ' || rec.loanid);
      end if;
   end loop;

   commit;
end;
/