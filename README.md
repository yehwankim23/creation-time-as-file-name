# Creation Time as File Name

_\* Targetted configuration: iPhone + iXpand Drive._

1. **Copy photos and/or videos** to a folder.
2. Shift + right-click and **Open PowerShell Here**.
3. Paste and **run the following [code](script.ps1)**.

```pwsh
Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "IMG_", $_.CreationTime.ToString("yyyy-MM-dd HH-mm-ss ") }; Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "~(photo|video)", "-" }; Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "--full", " full-" }; Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "-\..+", $_.Extension.ToLower() }
```
