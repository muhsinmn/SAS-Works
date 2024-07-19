data arithfunctions;
x1 =12.3;
x2 = 14.5;
x3 = 17.3;
x4 = -11.5;

maximum = max(x1,x2,x3,x4);
maximum1 = max(of x1-x4);
absolute
run;

proc print data=arithfunctions;
run;
