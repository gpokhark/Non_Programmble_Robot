
ply=[0.6096	0
0.6096	1.2192
-0.6096	1.2192
-0.6096	-1.2192
0.6096	-1.2192
0.6096	0];
plot(ply(:,1),ply(:,2));
hold on

ref=[0,0];
plot(ref(:,1),ref(:,2));
hold on

B1=[0.1524	0.4572
0.1524	0.762
-0.1524	0.762
-0.1524	0.4572
0.1524	0.4572];
plot(B1(:,1),B1(:,2));
hold on

B2=[0.1524	-0.4572
0.1524	-0.762
-0.1524	-0.762
-0.1524	-0.4572
0.1524	-0.4572];
plot(B2(:,1),B2(:,2));
hold on

plot (yout(:,1),yout(:,2),'r');

ORad=TurningRadius(1,1)+(TrackWidth(1,1)/2);
IRad=TurningRadius(1,1)-(TrackWidth(1,1)/2);

if IRad > 0.39624
    disp('Inner wheel does not touch the block');
else
    disp('CHANGE THE VALUES: Inner wheel touches the block');
end

if ORad < 0.61
    disp('Outer wheel does not fall off the plywood');
else
    disp('CHANGE THE VALUES: Outer wheel falls down the plywood');
end
