FROM mcr.microsoft.com/powershell:latest

WORKDIR /app

COPY hello.ps1 .

EXPOSE 80

CMD ["pwsh", "-File", "hello.ps1"]