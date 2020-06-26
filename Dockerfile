#FROM microsoft/iis
FROM mcr.microsoft.com/windows/servercore/iis:latest

ADD https://github.com/dnnsoftware/Dnn.Platform/releases/download/v9.4.4/DNN_Platform_9.4.4_Install.zip ./DotNetNuke.zip
ADD . /

#RUN powershell -NoProfile -Command ls
RUN powershell -File  C:\prereq.ps1
RUN powershell -File  C:\setup.ps1

EXPOSE 88
