@echo off 
rem 遍历移动文件
for /R "F:\HX1_SMRT_DNA" %%s in (*) do ( 
move %%s F:\fff
echo %%s 
) 
pause 