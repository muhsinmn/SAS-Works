*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 3rd Ed, Wiley                        *
* (C) 2022 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates PROC MEANS;

DATA FERTILIZER;
INPUT FEEDTYPE WEIGHTGAIN;
DATALINES;
1 46.20
1 55.60
1 53.30
1 44.80
1 55.40
1 56.00
1 48.90
2 51.30
2 52.40
2 54.60
2 52.20
2 64.30
2 55.00
;
PROC SORT DATA=FERTILIZER;BY FEEDTYPE;
PROC MEANS; VAR WEIGHTGAIN; BY FEEDTYPE;
TITLE 'Summary statistics by group';
RUN;
PROC MEANS; VAR WEIGHTGAIN; CLASS FEEDTYPE;
TITLE 'Summary statistics USING CLASS';
RUN;

TITLE;FOOTNOTE;


