#!/usr/local/bin/pwsh

function Dump-Values($obj) {
    $names = $obj | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name
    foreach ($name in $names) {
        $val = $obj.$name
        if($val -is [String]) {
            $val
        } elseif ($val -is [System.Management.Automation.PSCustomObject]) {
            Dump-Values $val
        }
    }
}

$jsonObj = Get-Content messages/en.json | ConvertFrom-Json
$f = New-TemporaryFile
Dump-Values $jsonObj | Out-File -Encoding utf8 $f
wc search/en/* $f