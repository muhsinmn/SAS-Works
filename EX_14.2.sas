*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 3rd Ed, Wiley                        *
* (C) 2022 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates the PROC ANOVA procedure;


DATA DEVICE;
INPUT SUBJ $ GROUP SCORE;
DATALINES;
AE 1 99
DF 2 99
ED 1 82
FR 3 79
EE 1 89
EG 2 87
IS 3 69
OE 2 77
KY 1 100
WD 3 82
AD 2 89
TR 1 99
SS 2 83
WE 3 81
;
TITLE 'Exercise 13.2';
* PUT ANALYSIS CODE BELOW HERE;


TITLE;FOOTNOTE;

