
/*
4.	Write a procedure to print all employee name and his job in following format.
Input: - KING PRESIDENT
              SCOTT ANALYST
Output: - K(ING) is PRESIDENT
                 S(COTT) is ANALYST




drop procedure if exists pro4;
delimiter //

create procedure pro4(val varchar(100))

BEGIN
declare a int default 0;
declare new_string varchar(100);
declare cnt int default 0;

set new_string="";

label:LOOP
if ascii(substr(val,a,1))=Ascii(" ") THEN
  leave label;
  else 
  set cnt:=cnt+1;
  
  
  
  end if;
set a=a+1;
end loop ;

set new_string:=concat(substr(val,1,1),'(',substr(val,2,cnt-2),")" ," is ",substr(val,cnt+1));
select val,new_string;

end //
delimiter ;
*/



/*
6.	Write a procedure to find the number of vowels, digits and white spaces 



drop procedure if exists pro7;
delimiter $

create procedure pro7(val varchar(100))
 
BEGIN
declare a int default 0;
declare l int ;
declare cnt_vowel int default 0;
declare cnt_digit int default 0;
declare cnt_whitespace int default 0;
set l:=length(val);


label:LOOP

if a=l THEN
leave label;

elseif substr(val,a,1) in ('a','e','i','o','u','A','E','I','O','U') THEN
set cnt_vowel = cnt_vowel+1;

elseif substr(val,a,1) in (1,2,3,4,5,6,7,8,9,0) THEN
set cnt_digit = cnt_digit+1;

elseif ascii(substr(val,a,1))=ascii(" ") THEN
set cnt_whitespace:=cnt_whitespace+1;

end if;
set a:=a+1;
end loop;
select val,cnt_digit,cnt_vowel,cnt_whitspace;
end $
delimeter ;


  


*/





