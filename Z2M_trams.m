function M=Z2M_trams(Z,POSICON)

R=POSICON.R;      %码盘距旋转中心的直线距离
THE1=POSICON.THE1;  %旋转中心正方向与连线的夹角
THE2=POSICON.THE2;   %%码盘中心正方向与旋转中心正方向的夹角

St=Z.s;
Stz=St+THE1;
RX=-R*sin(Stz*pi/180);   %码盘和旋转中心的固定关系
RY=R*cos(Stz*pi/180);

M.x=RX+Z.x;
M.y=RY+Z.y;

M.s=Z.s+THE2;

