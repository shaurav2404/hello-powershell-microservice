FROM mcr.microsoft.com/powershell:latest

WORKDIR /app

COPY hello.ps1 .

CMD ["pwsh", "-File", "hello.ps1"]