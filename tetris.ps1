


param($Line1 = "", $Line2 = "", $Line3 = "", $Line4 = "", $Line5 = "", $Line6 = "", $Line7 = "", $Line8 = "", $Line9 = "", [int]$Speed = 50) 


function Test-Admin {
    $currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
}

if ((Test-Admin) -eq $false)  {
    if ($elevated) {
        # tried to elevate, did not work, aborting
    } else {
        Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
    }
    exit
}


$TerminalWidth = 120 # characters

function WriteLine { param([string]$Line, [int]$Speed)
	[int]$Start = 1
	[int]$End = $Line.Length
	$StartPosition = $HOST.UI.RawUI.CursorPosition
	$Spaces = "                                                                     "

	if ($Line -eq "") { return }
	foreach ($Pos in $Start .. $End) {
		$TextToDisplay = $Spaces.Substring(0, $TerminalWidth / 2 - $pos / 2) + $Line.Substring(0, $Pos)
		write-host -nonewline $TextToDisplay
		start-sleep -milliseconds $Speed
		$HOST.UI.RawUI.CursorPosition = $StartPosition
	}
	write-host ""
}

if ($Line1 -eq "") {
	$Line1 = "Hello there "
	$Line2 = " "
	$Line3 = "This is Tetris."
	$Line4 = " "
	$Line5 = "Best regards,"
	$Line6 = "Maya"
}
write-host ""
WriteLine $Line1 $Speed
WriteLine $Line2 $Speed
WriteLine $Line3 $Speed
WriteLine $Line4 $Speed
WriteLine $Line5 $Speed
WriteLine $Line6 $Speed
WriteLine $Line7 $Speed
WriteLine $Line8 $Speed
WriteLine $Line9 $Speed
write-host ""

[System.Console]::Beep(1320,500)
[System.Console]::Beep(990,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1188,250)
[System.Console]::Beep(1320,125)
[System.Console]::Beep(1188,125)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(990,250)
[System.Console]::Beep(880,500)
[System.Console]::Beep(880,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1320,500)
[System.Console]::Beep(1188,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(990,750)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1188,500)
[System.Console]::Beep(1320,500)
[System.Console]::Beep(1056,500)
[System.Console]::Beep(880,500)
[System.Console]::Beep(880,500)
start-sleep -milliseconds 250
[System.Console]::Beep(1188,500)
[System.Console]::Beep(1408,250)
[System.Console]::Beep(1760,500)
[System.Console]::Beep(1584,250)
[System.Console]::Beep(1408,250)
[System.Console]::Beep(1320,750)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1320,500)
[System.Console]::Beep(1188,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(990,500)
[System.Console]::Beep(990,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1188,500)
[System.Console]::Beep(1320,500)
[System.Console]::Beep(1056,500)
[System.Console]::Beep(880,500)
[System.Console]::Beep(880,500)
start-sleep -milliseconds 500
[System.Console]::Beep(1320,500)
[System.Console]::Beep(990,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1188,250)
[System.Console]::Beep(1320,125)
[System.Console]::Beep(1188,125)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(990,250)
[System.Console]::Beep(880,500)
[System.Console]::Beep(880,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1320,500)
[System.Console]::Beep(1188,250)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(990,750)
[System.Console]::Beep(1056,250)
[System.Console]::Beep(1188,500)
[System.Console]::Beep(1320,500)
[System.Console]::Beep(1056,500)
[System.Console]::Beep(880,500)
[System.Console]::Beep(880,500)

start-sleep -milliseconds 500


exit 0 # success