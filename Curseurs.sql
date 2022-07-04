
----------------------------------------
------------CURSEURS-IMPLICITES---------
----------------------------------------

DECLARE
 total_rows number(2);
BEGIN
 UPDATE customers
 SET salary = salary + 500;
 IF sql%notfound THEN
 dbms_output.put_line('no customers selected');
 ELSIF sql%found THEN
 total_rows := sql%rowcount;
 dbms_output.put_line( total_rows || ' customers selected ');
 END IF;
END;
/

----------------------------------------
------------CURSEURS-EXPLICITES---------
----------------------------------------

--CURSOR cursor_name IS select_statement;

CURSOR c_customers IS
 SELECT id, name, address FROM customers;

----------------------------------------
------------OUVRIR UN CURSEUR-----------
----------------------------------------

OPEN c_customers;

----------------------------------------
------------PARCOURIR UN CURSEUR--------
----------------------------------------
--La récupération du curseur implique l'accès à une ligne à la fois. 
--Par exemple, nous allons récupérer les lignes
--à partir du curseur ouvert ci-dessus comme suit 

FETCH c_customers INTO c_id, c_name, c_addr;

----------------------------------------
------------FERMER UN CURSEUR--------
----------------------------------------

CLOSE c_customers;

----------------------------------------
------------CURSEURS--------------------
----------------------------------------

DECLARE
 c_id customers.id%type;
 c_name customerS.Name%type;
 c_addr customers.address%type;
 CURSOR c_customers is
 SELECT id, name, address FROM customers;
BEGIN
 OPEN c_customers;
 LOOP
 FETCH c_customers into c_id, c_name, c_addr;

EXIT WHEN c_customers%notfound;
 dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);
 END LOOP;
 CLOSE c_customers;
END;
/




