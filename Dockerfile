FROM microsoft/iis

ADD https://github.com/dnnsoftware/Dnn.Platform/releases/download/v9.2.2/DNN_Platform_9.2.2.178_Install.zip ./DotNetNuke.zip
ADD . /

#RUN powershell -NoProfile -Command ls
RUN powershell -File  C:\prereq.ps1
RUN powershell -File  C:\setup.ps1

EXPOSE 88
