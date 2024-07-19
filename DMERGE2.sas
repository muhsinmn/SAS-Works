*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 3rd Ed, Wiley                        *
* (C) 2022 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates a few-to-many merge;
DATA SALES;
FORMAT ITEM $20. BUYERTYPE $8.;
INPUT ITEM BUYERTYPE  PRICE;
DATALINES;
CARBCLEANER REPAIR 2.30
BELT CONSUMER 6.99
MOTOROIL CONSUMER 14.34
CHAIN STORE 18.99
SPARKPLUGS REPAIR 28.99
CLEANER CONSUMER 1.99
WRENCH STORE 18.88
;
RUN;
PROC PRINT DATA=SALES;RUN;
DATA DISCOUNT;
FORMAT BUYERTYPE $10.;
INPUT BUYERTYPE DISCOUNT;
DATALINES;
CONSUMER 0
REPAIR .33
STORE .40
;
RUN;
PROC PRINT DATA=SDISCOUNT;RUN;

* CODE TO PERFORM THE MERGE;
* YOU MUST COMPLETE THIS CODE FOR IT TO WORK;
PROC SORT DATA=SALES; BY BUYERTYPE;
PROC SORT _____________________________; *COMPLETE THIS;
DATA REPORT;
   MERGE ________________;BY _____________;*COMPLETE THIS;
   FINAL = ROUND(PRICE*(1-DISCOUNT),.01);
RUN;

* CODE TO PRINT THE REPORT;
PROC PRINT DATA=REPORT;
SUM _________;
RUN;


TITLE;FOOTNOTE;
