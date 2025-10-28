# REname

**用于仿真数据。采集数据后对数据名称重命名 并添加时间信息 组成二维数值用于仿真**

1.采集数据时，名称无需更换;

2.首先 在终端输入clc；clear； 再依次导入 .mat文件，运行此脚本，运行dd文件，进行 slvnvmakeharness
处理,运行loadMdf2SignalBuilder脚本进行仿真，若使用fromworkspace 进行仿真 则将30行的判断置1

3.操作后仿真信号名称为“XXX_sim”
