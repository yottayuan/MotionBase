figure(1)
for i=1:101
  
clf
view([1 1 1])
axis([-1 1 -1 1 -1 1])  
hold on
[length1,l1,length2,l2,length3,l3,length4,l4,length5,l5,length6,l6,Bx,By,Bz,Tx,Ty,Tz]=...
    traj(xdesired(i), ydesired(i),1,anglex(i),angley(i),anglez(i));

% quiver3(Bx(1),By(1), 0,l1(1),l1(2),l1(3))
% 
% quiver3(Bx(2),By(2), 0,l2(1),l2(2),l2(3))
% 
% quiver3(Bx(3),By(3), 0,l3(1),l3(2),l3(3))
% 
% quiver3(Bx(4),By(4), 0,l4(1),l4(2),l4(3))
% 
% quiver3(Bx(5),By(5), 0,l5(1),l5(2),l5(3))
% 
% quiver3(Bx(6),By(6), 0,l6(1),l6(2),l6(3))

%Arrow in x-direction
quiver3(0,0,0,1,0,0)


%leg1
quiver3(Bx(1),By(1),0,...
    -shortleg*cos(a1(i))*sin(-pi/6), shortleg*cos(a1(i))*cos(-pi/6),shortleg*sin(a1(i)))

quiver3(Bx(1)-shortleg*cos(a1(i))*sin(-pi/6),...
   By(1) + shortleg*cos(a1(i))*cos(-pi/6),...
   shortleg*sin(a1(i)),x1(i),y1(i),z1(i))
%leg2
quiver3(Bx(2),By(2),0,...
    -shortleg*cos(a2(i))*sin(pi/6), shortleg*cos(a2(i))*cos(pi/6),shortleg*sin(a2(i)))

quiver3(Bx(2)-shortleg*cos(a2(i))*sin(pi/6),...
   By(2)+ shortleg*cos(a2(i))*cos(pi/6),...
   shortleg*sin(a2(i)),x2(i),y2(i),z2(i))
%leg3
quiver3(Bx(3),By(3),0,...
    -shortleg*cos(a3(i))*sin(pi/2), -shortleg*cos(a3(i))*cos(pi/2),shortleg*sin(a3(i)))


quiver3(Bx(3)-shortleg*cos(a3(i))*sin(pi/2),...
   By(3)-shortleg*cos(a3(i))*cos(pi/2),...
   shortleg*sin(a3(i)),x3(i),y3(i),z3(i))

%leg4
quiver3(Bx(4),By(4),0,...
    -shortleg*cos(a4(i))*sin(5*pi/6), shortleg*cos(a4(i))*cos(5*pi/6),shortleg*sin(a4(i)))


quiver3(Bx(4)-shortleg*cos(a4(i))*sin(5*pi/6),...
   By(4)-shortleg*cos(a4(i))*cos(5*pi/6),...
   shortleg*sin(a4(i)),x4(i),y4(i),z4(i))

%leg5
quiver3(Bx(5),By(5),0,...
    shortleg*cos(a5(i))*sin(7*pi/6), -shortleg*cos(a5(i))*cos(7*pi/6),shortleg*sin(a5(i)))


quiver3(Bx(5)+shortleg*cos(a5(i))*sin(7*pi/6),...
   By(5)-shortleg*cos(a5(i))*cos(7*pi/6),...
   shortleg*sin(a5(i)),x5(i),y5(i),z5(i))

%leg6
quiver3(Bx(6),0.402*sin(250/180*pi),0,...
    shortleg*cos(a6(i))*sin(9*pi/6), -shortleg*cos(a6(i))*cos(9*pi/6),shortleg*sin(a6(i)))


quiver3(Bx(6)+shortleg*cos(a6(i))*sin(9*pi/6),...
   By(6)-shortleg*cos(a6(i))*cos(9*pi/6),...
   shortleg*sin(a6(i)),x6(i),y6(i),z6(i))

F(i) = getframe;

pause(0.05)
end


