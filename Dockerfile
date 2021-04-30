#FROM mcr.microsoft.com/dotnet/sdk:5.0
#COPY . .
#EXPOSE 80 
#RUN dotnet restore
#RUN dotnet build
#RUN dotnet run

#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat


#webapiTest.csproj
FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
LABEL Descripcion="Imagen base donde se publicara la aplicacion"
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
LABEL Descripcion="Imagen temporal utilizada para restaurar y compilar"
WORKDIR /src
ARG projectName
COPY ["${projectName}.csproj", ""]
RUN dotnet restore "${projectName}.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "${projectName}.csproj" -c Release -o /app/build

FROM build AS publish
LABEL Descripcion="Imagen temporal utilizada para publicar los componentes"
RUN dotnet publish "${projectName}.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
ARG projectName
ENV componentName=${projectName}".dll"
LABEL ProjectName=$componentName
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "webapitest.dll"]
