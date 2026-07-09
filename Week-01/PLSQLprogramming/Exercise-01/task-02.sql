   SET SERVEROUTPUT ON;

begin
   for rec in (
      select customerid,
             balance
        from customers
   ) loop
      if rec.balance > 10000 then
         update customers
            set
            isvip = 'TRUE'
          where customerid = rec.customerid;

         dbms_output.put_line('Customer '
                              || rec.customerid || ' promoted to VIP.');
      end if;
   end loop;

   commit;
end;
/