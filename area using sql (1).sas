data area;
input length breadth;
datalines;
22 40
44 55
23 21
;

proc sql ;
create table area_of_rec as
select length, breadth, length*breadth as area_rect
from area;
run;
