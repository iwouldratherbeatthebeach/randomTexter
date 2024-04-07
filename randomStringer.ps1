clear host
do {
   $TokenSet = @{
        L = [Char[]]'RANDOM STRING'
    }

$Lower = Get-Random -Count 13 -InputObject $TokenSet.L

$StringSet =($Lower)

[void][System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
[System.Windows.Forms.SendKeys]::SendWait("$StringSet{ENTER}")

Start-Sleep -Seconds 0.75

} While ($true)