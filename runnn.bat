@echo off
:: Try running "ollama run" to see if Ollama is installed
ollama run --version >nul 2>&1

:: Check the error code to determine if Ollama is installed
IF %ERRORLEVEL% NEQ 0 (
    echo Ollama is not installed. Downloading setup...
    powershell -command "Invoke-WebRequest -Uri https://ollama.com/download/OllamaSetup.exe -OutFile OllamaSetup.exe"
    echo Download complete. Running setup...
    start /wait OllamaSetup.exe
    echo Installation complete.
) ELSE (
    echo Ollama is already installed.
)

:: Run your main Runnn executable or script
echo Starting Runnn...
:: Replace this with the command to start your main executable
start runnn_main_script.exe

pause
