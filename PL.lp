/* Objective function */
min: 360 x1 - 510 x2;

/* Variable bounds */
900 x1 + 1500 x2 <= 30000;
3150 x1 + 0 x2 >= 25000;
0 x1 + x2 >= 5;
0 <= 360 x1 - 510 x2 <= 50;

int x1;
int x2;