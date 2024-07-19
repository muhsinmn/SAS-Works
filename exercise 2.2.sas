data sem4.people;
input id $ 1-5 age 6-7 gender $ 8 married $ 9 waeight_in_pounds 10-12;
datalines;
0000123MY201
0002143FY154
0004333FN133
0005429MN173
0013249FY114
;
title "exercise 2.2";
proc print data=sem4.people;
run;