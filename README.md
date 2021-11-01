# Creation Time as File Name

Script that changes file names to their creation times

## Usage

> Targeted configuration: iPhone + [SanDisk iXpand™ Drive](https://apps.apple.com/us/app/sandisk-ixpand-drive/id1079870681)

1. Copy files from the iPhone to the iXpand Drive
2. Connect the iXpand Drive to the computer
3. `Shift + Right-click` on the iXpand Drive folder and `Open PowerShell Here`
4. Copy/paste and run the following [script](script.ps1)

```pwsh
Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "IMG_", $_.CreationTime.ToString("yyyy-MM-dd HH-mm-ss ") }; Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "~(photo|video)", "-" }; Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "--full", " full-" }; Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "-\..+", $_.Extension.ToLower() }
```
