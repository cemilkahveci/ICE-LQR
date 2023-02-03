% lqr controller design
clear all;
close all;
clc;

A = [-1, 0;
     0, -1];

A_new = [A, zeros(2,1), zeros(2,1);
         1, 0, 0, 0;
         0, 1, 0, 0];

B_new = [1, 0;
         0, 1;
         0, 0;
         0, 0];



Q = [0.01,0,0,0;
     0   ,8,0,0;
     0,0,0.05,0;
     0   ,0,0,1];
     
R = 1;

[K,S,e] = lqr(A_new,B_new,Q,R);





