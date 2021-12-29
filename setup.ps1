[system.io.directory]::CreateDirectory("C:\Users\$env:username\Desktop\Python")


$source = 'http://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe'
$destination = 'C:\Users\$env:username\Desktop\python-3.10.0-amd64.exe'
Invoke-RestMethod -Uri $source -OutFile $destination

$source1 = 'https://github.com/victormediacomunication/WhatsappAutomator/archive/refs/heads/main.zip'
$destination1 = 'C:\Users\$env:username\Desktop\wa.bot.zip'
Invoke-RestMethod -Uri $source1 -OutFile $destination1

cd Desktop

Get-Item –Path C:\Users\$env:username\Desktop\*64.exe | Move-Item -Destination C:\Users\$env:username\Desktop\Python

Start C:\Users\$env:username\Desktop\*64.exe | Move-Item -Destination C:\Users\$env:username\Desktop\Python | pip install pyttsx3 pywhatkit datetime wikipedia pyjokes pyaudio SpeechRecognition pipwin | pipwin install pyaudio
