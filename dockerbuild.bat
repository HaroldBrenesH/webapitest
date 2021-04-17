echo %1
docker build -t %1 --build-arg projectName=%1 .