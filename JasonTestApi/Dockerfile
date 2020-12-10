FROM mcr.microsoft.com/dotnet/aspnet:5.0

WORKDIR /app

COPY published/ ./

#EXPOSE 5000/tcp
#EXPOSE 5001/tcp
#ENV ASPNETCORE_URLS http://*:5000;https://*:5001
#ENV ASPNETCORE_URLS https://*:5001

EXPOSE 5000/tcp
#EXPOSE 5001/tcp
ENV ASPNETCORE_URLS http://*:5000 
#;https://*:5001

ENTRYPOINT ["dotnet", "JasonTestApi.dll"]