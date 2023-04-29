# get aliases of a specified commandlet
function Get-CmdletAlias ($cmdletname)
{
  Get-Alias |
    Where-Object -FilterScript {$_.Definition -like "$cmdletname"} |
    Format-Table -Property Definition, Name -AutoSize
}

# aliases
New-Alias -Name ca -Value Get-CmdletAlias


# function CustomizeConsole
# {
#   $hosttime = (Get-ChildItem -Path $PSHOME\pwsh.exe).CreationTime
#   $hostversion="$($Host.Version.Major)`.$($Host.Version.Minor)"
#   $Host.UI.RawUI.WindowTitle = "PowerShell $hostversion ($hosttime)"
#   Clear-Host
# }

# function Prompt
# {
#   "mac/" + (Get-Location) + "> "
# }

# starship prompt integration
Invoke-Expression (&starship init powershell)
