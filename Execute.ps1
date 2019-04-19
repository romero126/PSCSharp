Write-Host "Herro World"

Import-Module $PSScriptRoot\Module\PSCSharp\PSCSharp.psm1 -Verbose


#Simple Groundwork
$SourceFile = "$PSScriptRoot\Tests\Test1.ps1"
$DestinationFile = "$PSScriptRoot\Tests\Test1.cs"

ConvertTo-PSCSharp -Path $SourceFile -OutFile $DestinationFile