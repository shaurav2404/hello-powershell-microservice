FROM mcr.microsoft.com/powershell:latest

WORKDIR /app

COPY hello.ps1 .

EXPOSE 8080

CMD ["pwsh", "-File", "hello.ps1"]