$S = 0x1F480
# The subtraction is correct for characters in the Supplementary Multilingual Plane
$S = $S - 0x10000 
$H = 0xD800 + ($S -shr 10)
$L = 0xDC00 + ($S -band 0x3FF)
$emoji = [char]$H + [char]$L


function prompt { 
    $currentPath = $(Get-Location).Path;
    $maskedPath = $currentPath.Replace("(your home path here)", "");
    " " + $maskedPath + "> " 
    
}

$env:EDITOR = "C:\Program Files\Microsoft VS Code\Code.exe"

function fastfetch {
    param(
        [switch]$clear,
        [Parameter(ValueFromRemainingArguments = $true)]
        $Args
    )

    if ($clear) {
        Clear-Host
    }

    & fastfetch.exe @Args
}
