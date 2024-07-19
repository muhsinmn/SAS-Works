data myclass13;

set sashelp.class;

 proc means maxdec=2 mean std min max skewness kurtosis; *means for continous var;
 var height weight age;
 output out=newmeans; *save output in a new data set;
 
 proc print;
 run;