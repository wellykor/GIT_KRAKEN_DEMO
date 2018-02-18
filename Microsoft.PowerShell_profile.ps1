# Here how to setup your profile
# https://www.howtogeek.com/50236/customizing-your-powershell-profile/
# New-Item -path $profile -type file –force

<#
    Malheureusement, il faut réellement utiliser CMD et non PowerShell...
    
    Voici comment afficher les variables d'environnement:
        https://superuser.com/questions/341192/how-can-i-display-the-contents-of-an-environment-variable-from-the-command-promp

    Voici la liste des variables d'environnement:
        https://en.wikipedia.org/wiki/Environment_variable
    
    Il y a une façon d'utiliser les variables d'environnement sur PowerShell.
    Références:
        (Creating and Modifying Environment Variables)
            https://technet.microsoft.com/en-us/library/ff730964.aspx
        (HowTo: Set an Environment Variable in Windows - Command Line and Registry)
            http://www.dowdandassociates.com/blog/content/howto-set-an-environment-variable-in-windows-command-line-and-registry/
    Voici comment avoir la liste des variables:
        Get-ChildItem Env
    Exemple:
        (PowerShell)  cd (Get-ChildItem Env:\USERPROFILE).value
        (CMD)         cd %USERPROFILE%\desktop

    Windows OS possède un autre concept:
        https://en.wikipedia.org/wiki/Special_folder
#>

function Run-Chrome
{
    & 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
}
New-Alias Chrome Run-Chrome

function Run-Drive
{
    & 'C:\Program Files (x86)\Google\Drive\googledrivesync.exe'
}
New-Alias -Name Drive -Value Run-Drive
New-Alias -Name GoogleDrive -Value Run-Drive

function Run-Firefox
{
    & 'C:\Program Files (x86)\Mozilla Firefox\firefox.exe'
}
New-Alias Firefox Run-Firefox

function Run-Notepad++($arg1)
{
    & 'C:\Program Files (x86)\Notepad++\notepad++.exe' $arg1
}

function Run-VLC($arg1)
{
    & 'C:\Program Files (x86)\VideoLAN\VLC\vlc.exe' $arg1
}

# https://communary.net/2015/05/28/how-to-reload-the-powershell-console-session/
# How to reload the PowerShell console session
function Reload
{
    powershell -nologo
    #Invoke-PowerShell
}

function Run-Pycharm
{
    & 'C:\Program Files\JetBrains\PyCharm Community Edition 2017.3\bin\pycharm.exe'
}
New-Alias -Name PyCharm -Value Run-Pycharm

function Edit-Script
{
    ise C:\Users\Emanresu\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
}

# http://community.idera.com/powershell/powertips/b/tips/posts/bringing-window-in-the-foreground
#requires -Version 2
function Show-Process($Process, [Switch]$Maximize)
{
  $sig = '
    [DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);
    [DllImport("user32.dll")] public static extern int SetForegroundWindow(IntPtr hwnd);
  '
  
  if ($Maximize) { $Mode = 3 } else { $Mode = 4 }
  $type = Add-Type -MemberDefinition $sig -Name WindowAPI -PassThru
  $hwnd = $process.MainWindowHandle
  $null = $type::ShowWindowAsync($hwnd, $Mode)
  $null = $type::SetForegroundWindow($hwnd) 
}
# Example: Show-Process -Process (Get-Process -Id $PID) -Maximize

<#
    AHK-Related Commands
#>
function Edit-AHKScript
{
    Run-Notepad++ 'C:\Users\Emanresu\Documents\WindowsPowerShell\AHK.ahk'
}
New-Alias -Name AHK -Value Edit-AHKScript

function Reload-AHK
{
    & 'C:\Users\Emanresu\Documents\WindowsPowerShell\AHK.ahk'
}

function Play-ShapeOfYou
{
    & 'C:\Users\Emanresu\Music\Ed Sheeran - Shape Of You [Official Lyric Video].mp3'
}

function Get-PythonLib
{
    Write-Host ""
    Write-Host "===> C:\Users\Emanresu\AppData\Local\Programs\Python\Python36-32\Lib"
    Write-Host ""
}