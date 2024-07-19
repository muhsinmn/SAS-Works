*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 3rd Ed, Wiley                        *
* (C) 2022 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates appending data sets;
DATA OLD1;
INPUT SUBJ $ AGE YRS_SMOKE;
datalines;
001 34 12
003 44 14
004 55 35
006 21 3
;
DATA OLD2;
INPUT SUBJ $ AGE YRS_SMOKE MARRIED;
datalines;
011 33 11 1
012 25 19 0
023 65 45 1
032 71 55 1
;
RUN;
DATA NEW;SET OLD1 OLD2; RUN;
PROC PRINT DATA=NEW;RUN;


TITLE;FOOTNOTE;
