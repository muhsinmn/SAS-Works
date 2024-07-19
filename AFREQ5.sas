*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 3rd Ed, Wiley                        *
* (C) 2022 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates the PROC FREQ procedure;

DATA DRINKERS;
INPUT CRIME $ DRINKER COUNT;
DATALINES;
Arson		1	50
Arson		0	43
Rape		1	88
Rape		0	62
Violence	1	155
Violence	0	110
Stealing	1	379
Stealing	0	300
Coining		1	18
Coining		0	14
Fraud		1	63
Fraud		0	144
;

PROC FREQ DATA=DRINKERS;WEIGHT COUNT;
     TABLES CRIME*DRINKER/CHISQ;  
TITLE 'Chi Square Analysis of a Contingency Table';
RUN;


TITLE;FOOTNOTE;
