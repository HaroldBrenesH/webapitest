echo %1
docker build -t webapitest --build-arg projectName=%1 .