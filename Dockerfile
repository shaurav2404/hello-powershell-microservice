FROM mcr.microsoft.com/powershell:latest

WORKDIR /app
COPY hello.ps1 .

CMD ["pwsh", "hello.ps1"]