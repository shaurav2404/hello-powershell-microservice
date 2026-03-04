$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://*:8080/")
$listener.Start()

Write-Host "Server started on port 80..."

while ($listener.IsListening) {

    try {

        $context = $listener.GetContext()
        $response = $context.Response

        $message = @"
<html>
<head>
<title>ECS Deployment</title>
</head>
<body>
<h1>Hello from ECS Fargate 🚀</h1>
<p>Container running successfully</p>
</body>
</html>
"@

        $buffer = [System.Text.Encoding]::UTF8.GetBytes($message)

        $response.ContentLength64 = $buffer.Length
        $response.OutputStream.Write($buffer,0,$buffer.Length)
        $response.OutputStream.Close()

    }
    catch {
        Write-Host "Request failed but server still running..."
    }

}