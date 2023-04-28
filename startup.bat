@echo off
TITLE DOC-TRANSFER Server
REM 进入当前批处理文件所在的目录
cd /d %~dp0

rem 设置转换服务使用的JDK
rem ---------------------
set JAVA_HOME=jdk1.8\

rem chcp 65001 [utf-8] -Dfile.encoding=utf-8
rem chcp 936 [gbk]

%JAVA_HOME%bin\java -Xmx1g -Xms1g -Xmn1g -Xss128k -XX:MaxTenuringThreshold=0 -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -Duser.timezone=GMT+08 -Duser.language=zh -Duser.region=CN -Dsun.jnu.encoding=utf-8 -XX:+HeapDumpOnOutOfMemoryError -jar start.jar

cmd /k