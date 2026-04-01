Write-Host "    [+] Adding exclusions for D drive"
$exclusionPaths = @("D:\", "D:\*")
foreach ($path in $exclusionPaths) {
    if ($path -eq "D:\") {
        Add-MpPreference -ExclusionPath $path -ErrorAction SilentlyContinue
    } else {
        Add-MpPreference -ExclusionProcess $path -ErrorAction SilentlyContinue
    }
}
