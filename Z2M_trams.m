function M=Z2M_trams(Z,POSICON)

R=POSICON.R;      %���̾���ת���ĵ�ֱ�߾���
THE1=POSICON.THE1;  %��ת���������������ߵļн�
THE2=POSICON.THE2;   %%������������������ת����������ļн�

St=Z.s;
Stz=St+THE1;
RX=-R*sin(Stz*pi/180);   %���̺���ת���ĵĹ̶���ϵ
RY=R*cos(Stz*pi/180);

M.x=RX+Z.x;
M.y=RY+Z.y;

M.s=Z.s+THE2;

