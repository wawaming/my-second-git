function [ZS,MS]=set_start_pot( START,POSICON,flag)

if flag==0 %按旋转中心的来算    

    ZS=START;
    MS=Z2M_trams(START,POSICON);
end
if flag==1 %按码盘中心的来算
    
   MS=START;
   ZS=M2Z_trams(START,POSICON);
   
end