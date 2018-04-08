function h= car_frame_draw( Z,h)

POT2CENTER_LEN1=559.02;
POT2CENTER_LEN2=559.02;
TOP2CENTER_LEN=700;
THE1=0;
THE2=42.8;
THE3=137.15;
THE4=-137.15;
THE5=-42.8;


St=Z.s;

Stz1=St+THE1;
RX1=-TOP2CENTER_LEN*sin(Stz1*pi/180)+Z.x;   %1号点旋转中心的固定关系
RY1=TOP2CENTER_LEN*cos(Stz1*pi/180)+Z.y;

Stz2=St+THE2;
RX2=-POT2CENTER_LEN1*sin(Stz2*pi/180)+Z.x;   %2号点旋转中心的固定关系
RY2=POT2CENTER_LEN1*cos(Stz2*pi/180)+Z.y;

Stz3=St+THE3;
RX3=-POT2CENTER_LEN2*sin(Stz3*pi/180)+Z.x;   %13号点旋转中心的固定关系
RY3=POT2CENTER_LEN2*cos(Stz3*pi/180)+Z.y;

Stz4=St+THE4;
RX4=-POT2CENTER_LEN2*sin(Stz4*pi/180)+Z.x;   %1号点旋转中心的固定关系
RY4=POT2CENTER_LEN2*cos(Stz4*pi/180)+Z.y;

Stz5=St+THE5;
RX5=-POT2CENTER_LEN1*sin(Stz5*pi/180)+Z.x;   %1号点旋转中心的固定关系
RY5=POT2CENTER_LEN1*cos(Stz5*pi/180)+Z.y;
figure(1)
h(7)=line([RX1,RX2],[RY1,RY2],'linewidth',1,'color','b');
h(8)=line([RX2,RX3],[RY2,RY3],'linewidth',1,'color','b');
h(9)=line([RX3,RX4],[RY3,RY4],'linewidth',1,'color','b');
h(10)=line([RX4,RX5],[RY4,RY5],'linewidth',1,'color','b');
h(11)=line([RX5,RX1],[RY5,RY1],'linewidth',1,'color','b');
h(12)=line([RX5,RX2],[RY5,RY2],'linewidth',1,'color','b');

