# Stage 1
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app
COPY /WebApplication2/ /app
EXPOSE 80
EXPOSE 443

# Stage 2
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS final
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "WebApplication2.dll"]