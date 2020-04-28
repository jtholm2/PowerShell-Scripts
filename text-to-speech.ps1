Add-Type -AssemblyName System.speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$location = Read-Host "Please enter the absolute file path in which your text is located"
$fileName = Read-Host "What is your file name?"
Set-Location $location
$fileToRead = Get-Content -Path .\$fileName -Raw
$speak.Rate = Read-Host "How fast would you like me to read your text? Please enter a number between -10 and 10"
$speak.Speak($fileToRead)