Write-Host "Herro World"

Import-Module $PSScriptRoot\Module\PSToCSharp\PSToCSharp.psm1 -Verbose


#Simple Groundwork
$SourceFile = "$PSScriptRoot\Tests\Test1.ps1"
$DestinationFile = "$PSScriptRoot\Tests\Test1.cs"

ConvertTo-CSharp -Path $SourceFile -OutFile $DestinationFile