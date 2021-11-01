Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "IMG_", $_.CreationTime.ToString("yyyy-MM-dd HH-mm-ss ") }

Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "~(photo|video)", "-" }
Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "--full", " full-" }

Get-ChildItem -path "$PSScriptRoot" | Rename-Item -NewName { $_.Name -replace "-\..+", $_.Extension.ToLower() }
