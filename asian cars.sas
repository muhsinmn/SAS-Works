data asiancars;
set sashelp.cars;

if origin = 'Asia';

proc print data = asiancars;

run;