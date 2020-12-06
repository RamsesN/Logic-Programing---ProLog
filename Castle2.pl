:- lib(lists). :- lib(fd). :- lib(fd_search). 
 
 
sentries(Castle) :-  setup(Castle),  solve(Castle),  printC(Castle). 
 
sentries2(Castle) :-  setup(Castle),  solve2(Castle),  printC(Castle). 
 
setup(Castle) :-  /* a list of 8 variables */  Castle = [A,AB,B,BC,C,CD,D,DE,E,EF,F,FA], 
 
 /* each variable is an integer between 0 and 12 */  Castle :: 0..100, 
 
 /* sum of the variables is 12 - note the #= -  it must be #= so that this is a delayable integer  constraint the others are #> #< #>= #=< #\=   
 
 a delayable constraint is one that is not necessarily evaluated   when it is first set up 
 */  

 alldifferent(Castle),
 
 /*A + AB + B + BC + C + CD + D + DE + E + EF + F + FA #= 100*/
 
 A + AB + B #= B + BC + C, 
 
 B + BC + C #= C + CD + D, 
 
 C + CD + D #= D + DE + E, 
 
 D + DE + E #= E + EF + F,

 E + EF + F #= F + FA + A.

 
 
 /* solve the problem by labeling the variables */ solve(Castle) :-   labeling(Castle). 
 
solve2(Castle) :-  Castle = [A,AB,B,BC,C,CD,D,DE,E,EF,F,FA],  Sum #= A + AB + B + BC + C + CD + D + DE + E + EF + F + FA,  minimize(labeling(Castle),Sum).  
 
printC(Castle) :-  Castle = [A,AB,B,BC,C,CD,D,DE,E,EF,F,FA],  printf("%3d%3d%3d%3d%3d%3d%3d%3d%3d%3d%3d%3d\n", [A,AB,B,BC,C,CD,D,DE,E,EF,F,FA]).