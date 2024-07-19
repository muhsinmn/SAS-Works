*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 3rd Ed, Wiley                        *
* (C) 2022 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates the PROC FREQ procedure;

DATA GENE;
     INPUT @1 COLORTYPE $13. @15 NUMBER 3.;
DATALINES; 
YELLOWSMOOTH  315
YELLOWWRINKLE 108
GREENSMOOTH   101
GREENWRINKLE   32
;
* HYPOTHESIZING A 9:3:3:1 RATIO;
PROC FREQ ORDER=DATA ; WEIGHT NUMBER; 
  TITLE 'GOODNESS OF FIT ANALYSIS';
  TABLES COLORTYPE / NOCUM CHISQ 
         TESTP=(0.5625 0.1875 0.1875 0.0625);
RUN;


TITLE;FOOTNOTE;
