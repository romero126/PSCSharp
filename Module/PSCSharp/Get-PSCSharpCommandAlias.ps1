function Get-PSCSharpCommandAlias
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory)]
        [String]$Name,
        [Parameter()]
        [object[]]$Elements
    )

    #Load the file.
    #Todo: Move loading the file to Module Load. to lower IOPS during Processing

    [XML]$XML = get-content $PSScriptRoot\CommandAlias.xml
    foreach ($Command in $XML.CommandAlias.Command)
    {
        if ($Name -match $Command.Name)
        {
            #Build the ScriptBlock
            $SB = ([ScriptBlock]::Create($Command.Call.ToString()) )
            Switch ($Command.Type)
            {
                "Simple" {
                    #CommandType Simple will parse as a string.
                    $Elements = $Elements | ForEach-Object { $_.ToString() }
                    Invoke-Expression (". `$SB {0}" -f ($Elements -join " ") )
                }
                Default {
                    . $SB $Elements
                }
            }
        }
    }
}