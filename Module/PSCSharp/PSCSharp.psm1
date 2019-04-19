$Items = Get-ChildItem $PSScriptRoot\*.ps1

$Items | ForEach-Object {
    . $_
}