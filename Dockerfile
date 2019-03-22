FROM microsoft/iis

ADD https://github.com/dnnsoftware/Dnn.Platform/releases/download/v9.1.0/DNN_Platform_9.1.0.367_Install.zip /DotNetNuke.zip
ADD . /

#RUN powershell -NoProfile -Command ls
RUN powershell -File  C:\prereq.ps1
RUN powershell -File  C:\setup.ps1

EXPOSE 88
