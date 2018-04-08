function [M,h]  = car_show(Z,POSICON,h)
M=Z2M_trams(Z,POSICON);%Z转M


figure(1)
h(1)=line([Z.x,Z.x-30*sin(Z.s*pi/180)],[Z.y,Z.y+30*cos(Z.s*pi/180)],'linewidth',1,'color','r');
h(2)=rectangle('Position',[Z.x-30,Z.y-30,60,60],'Curvature',[1,1]);axis equal
h(3)=line([Z.x,M.x],[Z.y,M.y],'color','r');     %红色线条，表示调节完毕后的位置关系
h(4)=rectangle('Position',[M.x-50,M.y-50,100,100],'Curvature',[1,1]);axis equal
h(5)=line([M.x,M.x-50*sin(M.s*pi/180)],[M.y,M.y+50*cos(M.s*pi/180)],'linewidth',1,'color','r');
h=car_frame_draw( Z,h);

