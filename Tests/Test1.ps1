function Write-TestValue
{
    [CmdletBinding(SupportsShouldProcess = $True, ConfirmImpact = 'High')]
    param(
        [Parameter(ValueFromPipelineByPropertyName)]
        [System.String]$Item1 = "*",

        [Parameter(Mandatory, ValueFromPipelineByPropertyName, Position = 0)]
        [System.String]$Item2,

        [Parameter(ValueFromPipelineByPropertyName, Position = 1)]
        [System.String]$Item3 = "*",

        [Parameter(ValueFromPipelineByPropertyName)]
        [System.String]$Item4 = "*",

        [Parameter()]
        [Switch]$SwitchParam1
    )

    begin
    {
        function ShouldNotBeAThing {}


    }

    process
    {
        Write-Host -Object "asdf" -NoNewLine -ForeGroundColor Yellow -BackgroundColor Blue
        write-host "hello World";Write-Host "From", "The", "Stacked"
    }

    end

    {

    }
}