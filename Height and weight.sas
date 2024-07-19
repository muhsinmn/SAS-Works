data sem4.myclass;
set sashelp.class;
weightkg = weight*0.454; /* creating new cplumn using the calculation */
heightinmtr = height*2.54/100;
new_col = "";

rename sex = gender;
bmi = weightkg/(heightinmtr*heightinmtr);

drop height weight;
if bmi < 18 then status = 'underweight';
else if 18 >= bmi < 20 then status = 'normal';
else if 20 >= bmi < 22 then status = 'overweight';
else if bmi >= 22 then status = 'obese';

proc sql; /* input sql into sas */
alter table sem4.myclass add column1 char,column2 ;

proc print;
where age > 12;
run;