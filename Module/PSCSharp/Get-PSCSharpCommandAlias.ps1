function Get-PSCSharpCommandAlias
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [String]$Name,
        [Parameter()]
        [object[]]$Elements
    )

    [XML]$XML = get-content $PSScriptRoot\CommandAlias.xml
    foreach ($Command in $XML.CommandAlias.Command)
    {
        if ($Name -match $Command.Name)
        {
            
            if ($Command.Type -eq "Simple") {
                $Elements = $Elements | ForEach-Object { $_.ToString() }
            }

            $SB = ([ScriptBlock]::Create($Command.Call.ToString()) )
            $SB.Invoke($Elements)
        }
    }
}