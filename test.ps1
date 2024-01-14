try {
    node -v >$null
    node .\fader.js '{"colors": ["#FF0000", "#00FF00", "#0000FF"], "txt": "./test.txt", "type": "horizontal", "output": "console"}'
}
catch {
    "NG"
}

Write-Host  "$(Get-Content -Path './result.txt' -Raw)"