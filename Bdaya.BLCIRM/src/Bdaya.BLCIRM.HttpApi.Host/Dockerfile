#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["common.props", "."]
COPY ["NuGet.Config", "."]
COPY ["src/Bdaya.BLCIRM.HttpApi.Host/Bdaya.BLCIRM.HttpApi.Host.csproj", "src/Bdaya.BLCIRM.HttpApi.Host/"]
COPY ["src/Bdaya.BLCIRM.Application/Bdaya.BLCIRM.Application.csproj", "src/Bdaya.BLCIRM.Application/"]
COPY ["src/Bdaya.BLCIRM.Domain/Bdaya.BLCIRM.Domain.csproj", "src/Bdaya.BLCIRM.Domain/"]
COPY ["src/Bdaya.BLCIRM.Domain.Shared/Bdaya.BLCIRM.Domain.Shared.csproj", "src/Bdaya.BLCIRM.Domain.Shared/"]
COPY ["src/Bdaya.BLCIRM.Application.Contracts/Bdaya.BLCIRM.Application.Contracts.csproj", "src/Bdaya.BLCIRM.Application.Contracts/"]
COPY ["src/Bdaya.BLCIRM.MeiliSearch/Bdaya.BLCIRM.MeiliSearch.csproj", "src/Bdaya.BLCIRM.MeiliSearch/"]
COPY ["src/Bdaya.BLCIRM.MongoDB/Bdaya.BLCIRM.MongoDB.csproj", "src/Bdaya.BLCIRM.MongoDB/"]
COPY ["src/Bdaya.BLCIRM.HttpApi/Bdaya.BLCIRM.HttpApi.csproj", "src/Bdaya.BLCIRM.HttpApi/"]
RUN dotnet restore "src/Bdaya.BLCIRM.HttpApi.Host/Bdaya.BLCIRM.HttpApi.Host.csproj"
COPY . .
WORKDIR "/src/src/Bdaya.BLCIRM.HttpApi.Host"
RUN dotnet build "Bdaya.BLCIRM.HttpApi.Host.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Bdaya.BLCIRM.HttpApi.Host.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Bdaya.BLCIRM.HttpApi.Host.dll"]