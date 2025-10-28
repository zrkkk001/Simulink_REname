% V1.0
% 2023-07-26
% zrkkk
% MATLAB 2021


%1.采集数据时，名称无需更换
%2. 首先 在终端输入clc；clear； 再依次导入 .mat文件，运行此脚本，运行dd文件，进行 slvnvmakeharness
%处理,运行loadMdf2SignalBuilder脚本
% 若使用fromworks 进行仿真 则将30行的判断置1
% clc;  clear;
% load('FORWARD_02_OAKY.mat')
alll=whos;
for i=1:length(alll)
     xname=alll(i).name;
    if  regexpi(alll(i).name,'.*_t\d')
         
          assignin('base',['t0'],eval(alll(i).name));%信号重新命名
        eval(['clear',' ',alll(i).name]);
    elseif  regexpi(alll(i).name,'q_.*')
    else
assignin('base',[xname,'_t0'],eval(alll(i).name));%信号重新命名
        eval(['clear',' ',alll(i).name]);%去除原有信号
    end

end

t1=t0(1);
t0=t0-t1;
if(1)
for i=1:length(alll)
     xname=alll(i).name;
         if  regexpi(alll(i).name,'.*_t\d')
         
       elseif  regexpi(alll(i).name,'q_.*')     
    else
        valve=[xname, '_t0'''];
   
valve=['[t0'' ,' valve,']'];
assignin('base',[xname,'_sim'],eval(valve));%信号重新命名
       
end
end
end
 eval(['clear',' ' ,'alll']);%去除原有信号
%  load('03.mat')