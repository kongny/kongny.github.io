
su st a1 a2 a3 a4 a5 a6 b1 b2 b3 b4 b5 c1 c2 c3 c4 c5 d1 d2 d3 d4 e1

lasso2 st a1 a2 a3 a4 a5 a6 b1 b2 b3 b4 b5 c1 c2 c3 c4 c5 d1 d2 d3 d4 e1,plotpath(lambda)


logit  st a1 a2 a3 a4 a5 a6 b1 b2 b3 b4 b5 c2 c3 c4 c5 d1 d2 d4
 est store m1
 
logit  st a4 a5 a6 b1 b2 b3 c5 d4
 est store m2
 
logit  st a4 a5 a6 b1 b2 b3 c5 d4
 est store m3
  
logit  st a4 a5 a6 b1 b2 
 est store m4
 
logit  st a5 b1 b2
 est store m5
 
 esttab m1 m2 m3 m4 m5 ,replace b(%10.4f) scalars(F pvalue) mtitles star(* .10 ** .05 *** .01)
 esttab m1 m2 m3 m4 m5 using re.rtf,replace b(%10.4f) scalars(F pvalue) mtitles star(* .10 ** .05 *** .01)


