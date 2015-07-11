// Comparison of original table and best fit function.
// Used for constructing new densitizer() in xmatrix.c
// Christopher Bero (bigbero@gmail.com)

// Original values that have been modified to allow
// a value of 200 to be the new lowest density
x=[1 10 15 20 25 30 35 45 50 55 65 80 90 100];
y=[200 170 120 90 50 40 30 20 16 14 10 6 4 1];

// New exponential function
// Found by plugging the above into an HP 50g calculator
x_new=1:1:100;
a=211.538187957;
b=-0.0488730165089;
y_new=a*exp(b*x_new);


plot(x,y,x_new,y_new);
