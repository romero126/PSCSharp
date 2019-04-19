$Items = Get-ChildItem $PSScriptRoot\*.ps1

foreach ($item in $Items)
{
    . $Item.FullName
}