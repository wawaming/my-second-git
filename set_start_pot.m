function [ZS,MS]=set_start_pot( START,POSICON,flag)

if flag==0 %����ת���ĵ�����    

    ZS=START;
    MS=Z2M_trams(START,POSICON);
end
if flag==1 %���������ĵ�����
    
   MS=START;
   ZS=M2Z_trams(START,POSICON);
   
end