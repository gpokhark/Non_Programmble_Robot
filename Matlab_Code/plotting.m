% plywood coordinates for drawing plywood
ply=[0.6096, 0; 0.6096,  1.2192; -0.6096, 1.2192; -0.6096, -1.2192; 0.6096,  -1.2192; 0.6096,  0];
plot(ply(:,1),ply(:,2));
hold on

%refernce point coordinates for drawing reference point
ref=[0,0];
plot(ref(:,1),ref(:,2));
hold on

% Building coordinates for drawing Building
B1=[0.1524	0.4572; 0.1524	0.762; -0.1524	0.762; -0.1524	0.4572; 0.1524	0.4572];
plot(B1(:,1),B1(:,2));
hold on
B2=[0.1524	-0.4572; 0.1524	-0.762; -0.1524	-0.762; -0.1524	-0.4572; 0.1524	-0.4572];
plot(B2(:,1),B2(:,2));
hold on

% Path followed by the vehicle yout(X,Y) coordinates of vehicle motion
% obtained from SIMULINK
plot (yout(:,1),yout(:,2),'r');
% hold on
% plot (yout(:,2),yout(:,5),'--');
% hold on
% plot (yout(:,3),yout(:,6),'x');
% hold on

% Checking whether the innerwheel touches the blocks or outer wheel falls
% off the plywood TurningRadius is obtained from SIMULINK Model
ORad=TurningRadius(1,1)+(TrackWidth(1,1)/2)+0.015;
IRad=TurningRadius(1,1)-(TrackWidth(1,1)/2)-0.015;
if IRad > 0.3964
    disp('Inner wheel does not touch the block');
else
    disp('CHANGE THE VALUES: Inner wheel touches the block');
end

if ORad < 0.6096
    disp('Outer wheel does not fall off the plywood');
else
    disp('CHANGE THE VALUES: Outer wheel falls down the plywood');
end

% Checking whether the vehicle skids or not Velocity is obtained from
% SIMULINK Model
Radius=TurningRadius(1);
temp=Velocity.^2/Radius;

if mu > temp
    disp('The vehicle will not skid');
    else
    disp('The velocity is too high the vehicle may skid due to centrifugal force');
end