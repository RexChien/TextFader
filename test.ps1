
$rainbow = @("#f00", "#ff7f00", "#ff0", "#0f0", "#0ff", "#00f", "#8b00ff")
$by_the_see = @("#447294", "#8fbcdb", "#f4d6bc")
$rose = @("#ffbad2", "#f20056", "#c8cfb4")


#rainbow: ["#f00", "#ff7f00", "#ff0", "#0f0", "#0ff", "#00f", "#8b00ff"]
#by the see: ["#447294", "#8fbcdb", "#f4d6bc"]
try {
    node -v >$null
    node .\fader.js "{`"colors`": $($rose | ConvertTo-Json), `"txt`": `"./test.txt`", `"type`": `"horizontal`", `"output`": `"console`"}"
}
catch {
    "NG"
}

Write-Host  "$(Get-Content -Path './result.txt' -Raw)"