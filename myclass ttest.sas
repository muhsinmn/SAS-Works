DATA MYCLASS;
SET SASHELP.CLASS;
PROC PRINT;
RUN;

PROC TTEST;
     CLASS SEX;
     VAR HEIGHT;
RUN;