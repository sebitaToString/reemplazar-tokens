FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
COPY *.cs ./
RUN dotnet restore
 
#ENTRYPOINT ["dotnet","run","replace.cs"]
