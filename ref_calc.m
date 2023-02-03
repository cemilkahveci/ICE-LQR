%ref_calc
rpm=ones(1,3);
torque=ones(1,3);


desired_rpm=2000;
desired_torque = 10;

syms a b
eqns = [17.54*a-3.18*b == desired_rpm, 1.16*a+2.32*b == desired_torque];
S = solve(eqns,[a b]);
rpm(1,1)=double(S.a);
torque(1,1)=double(S.b);


desired_rpm=2000;
desired_torque = 20;

syms a b
eqns = [17.54*a-3.18*b == desired_rpm, 1.16*a+2.32*b == desired_torque];
S = solve(eqns,[a b]);
rpm(1,2)=double(S.a);
torque(1,2)=double(S.b);


desired_rpm=1500;
desired_torque = 10;

syms a b
eqns = [17.54*a-3.18*b == desired_rpm, 1.16*a+2.32*b == desired_torque];
S = solve(eqns,[a b]);
rpm(1,3)=double(S.a);
torque(1,3)=double(S.b);
