$listener = [System.Net.HttpListener]::new()
$listener.Prefixes.Add("http://*:80/")
$listener.Start()

Write-Host "Service started..."

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $response = $context.Response
    $buffer = [System.Text.Encoding]::UTF8.GetBytes("Hello Microservice Raj.")
    $response.OutputStream.Write($buffer, 0, $buffer.Length)
    $response.Close()
}