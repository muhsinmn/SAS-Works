*******************************************************
* This SAS code is an example from the text			  *
* SAS ESSENTIALS 3rd Ed, Wiley                        *
* (C) 2022 Elliott, Alan C. and Woodward, Wayne A.    *
*******************************************************;

* This example illustrates PROC REG;
DATA JOB;
INPUT SUBJECT $ TEST1 TEST2 TEST3 TEST4 JOBSCORE;
CARDS;
   1         75     100      90      88      78 
   2         51      85      88      89      71 
   3         99      96      94      93      85 
   4         92     106      84      84      67 
   5         90      89      83      77      69 
   6         67      77      83      73      65 
   7        109      67      71      65      50 
   8         94     112     105      91     107 
   9        105     110      99      95      96 
  10         74     102      88      69      63 
;
PROC REG;
MODEL JOBSCORE=TEST1 TEST2 TEST3 TEST4;
TITLE 'Job Score Analysis using PROC REG';
RUN;
QUIT;
