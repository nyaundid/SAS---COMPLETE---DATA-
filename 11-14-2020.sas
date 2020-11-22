data rand; 
call streaminit(12345);
do i = 1 to 200;
	x = rand("Normal");
	output;
end;
run;

proc sgplot data = rand;
title "Random Values from N(0,1)";
histogram x;
run;

proc freq data=rand;
run;




data lengthfunctions;
	one = 'ABC  ';
	two = ' ';
	three = 'ABC  XYZ';
	length_one = length(one);
	lengthn_one = lengthn(one);
	lengthc_one = lengthc(one);
	length_two = length(two);
	lengthn_two = lengthn(two);
	lengthc_two = lengthc(two);
	length_three = length(three);
	lengthn_three = lengthn(three);
	lengthc_three = lengthc(three);
RUN;
PROC PRINT data = lengthfunctions;
	TITLE 'Length(n)(c) Function Examples';
RUN;
	

data trimlecture;
input firstname$ lastname$ age tscore;
length name$20;
name=trim(lastname)||', ' ||firstname;
datalines;
Alex Benson 27 45
;
run;
proc contents data=trimlecture;
run;

proc print data=trimlecture;
run;
	
	
data compressd;
input phonen$1-15;
phone1 = compress(phonen);
phone2 = compress(phonen,'(-)','s');
datalines;
(314)456-4768
(314) 453-56 78
;
run;

proc print data=compressd;
run;
	
	
data inputfunc;
input sale $9.;
numsale=input(sale,comma9.);
datalines;
6,515,353
;
run;
	proc print data=inputfunc;
	run;
	
	proc contents data=inputfunc;
	run;
	
	
data inputfunc;
input sale;
charsale=put(sale,7.);
datalines;
6515353
;
run;
	proc print data=inputfunc;
	run;
	
	proc contents data=inputfunc;
	run;	
	
	
	

	
