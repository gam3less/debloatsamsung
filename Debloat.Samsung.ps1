# Note: Some of the code was made by Disassembler <disassembler@dasm.cz> <https://github.com/Disassembler0/>
# The code made by him is marked, anything not marked was made by yours truly (Gam3less)
#
# Note: Never run scripts without reading them & understanding what they do.

$tweaks = @(
	### Requires administrator privileges ###
	"RequireAdmin",
	"InstallADB",
	"AskBixby",
	"AskGeneral",
	"AskSamsungPay",
	"AskRecreationalApps",
	"AskARemoji",
	"AskStickers",
	"AskFacebook",
	"AskCarMode",
	"AskEmail",
	"AskGameLauncher",
	"AskSamsungBrowser",
	"AskGearVR",
	"AskKidsMode",
	"AskScreenCover",
	"AskEdgeDisplay",
	"AskDex"
)

#Installs Chocolatey and adb
Function InstallADB {
		Write-Output "Installing Chocolatey"
		Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
		choco install chocolatey-core.extension -y
		Write-Output "Installing ADB"
		choco install adb -y

		}
# Menu that asks questions
	Function Show-Menu-Ask {
		    param(
		        [Parameter(Mandatory)]
		        [ValidateNotNullOrEmpty()]
		        [string]$Title,

		        [Parameter(Mandatory)]
		        [ValidateNotNullOrEmpty()]
		        [string]$runfunction
		    )

		 do
		 {
		    Clear-Host
		    Write-Host "================ Would you like to remove $Title ? ================"
		    Write-Host "Y: Press 'Y' to do this."
		    Write-Host "N: Press 'N' to skip this."
			Write-Host "Q: Press 'Q' to stop the entire script."
		    $selection = Read-Host "Please make a selection"
		    switch ($selection)
		    {
		    'y' { &$runfunction }
		    'n' { Break }
		    'q' { Exit  }
		    }
		 }
		 until ($selection -match "y" -or $selection -match "n" -or $selection -match "q")
		}
#Specifys what to do in the Show-Menu-Ask
Function AskBixby {
			Show-Menu-Ask -Title "Bixby" -runfunction "RemoveBixby"
		}

Function AskGeneral {
			Show-Menu-Ask -Title "General Bloatware" -runfunction "RemoveGeneral"
		}

Function AskSamsungpay {
			Show-Menu-Ask -Title "SamsungPay" -runfunction "RemoveSamsungpay"
		}


Function AskRecreationalApps {
			Show-Menu-Ask -Title "Recreational Apps" -runfunction "RemoveRecreationalApps"
		}


Function AskARemoji {
			Show-Menu-Ask -Title "AR Emojis" -runfunction "RemoveARemoji"
		}

Function AskStickers {
			Show-Menu-Ask -Title "Samsung Stickers" -runfunction "RemoveStickers"
		}

Function AskFacebook {
			Show-Menu-Ask -Title "Facebook" -runfunction "RemoveFacebook"
		}

Function AskCarMode {
			Show-Menu-Ask -Title "Car Mode" -runfunction "RemoveCarMode"
		}

Function AskEmail {
			Show-Menu-Ask -Title "Samsung Email" -runfunction "RemoveEmail"
		}

Function AskGameLauncher {
			Show-Menu-Ask -Title "Game Launcher" -runfunction "RemoveGameLauncher"
		}

Function AskSamsungBrowser {
			Show-Menu-Ask -Title "Samsung Browser" -runfunction "RemoveSamsungBrowser"
		}

Function AskGearVR {
			Show-Menu-Ask -Title "Gear VR" -runfunction "RemoveGearVR"
		}

Function AskKidsMode {
Show-Menu-Ask -Title "Kids Mode" -runfunction "RemoveKidsMode"
}

Function AskScreenCover {
Show-Menu-Ask -Title "Screencover" -runfunction "RemoveScreenCover"
}

Function AskEdgeDisplay {
Show-Menu-Ask -Title "Edge Display" -runfunction "RemoveEdgeDisplay"
}

Function AskDex {
Show-Menu-Ask -Title "Samsung Dex" -runfunction "RemoveDex"
}
#####
# Place a # before anything you dont want to remove
#####
#Removes Bixby and all Bixby components
Function RemoveBixby {
	adb shell pm uninstall --user 0 com.samsung.android.bixby.wakeup
	adb shell pm uninstall --user 0 com.samsung.android.app.spage # Bixby homepage launcher
	adb shell pm uninstall --user 0 com.samsung.android.app.routines # Bixby Routines
	adb shell pm uninstall --user 0 com.samsung.android.bixby.service # Bixby features
	adb shell pm uninstall --user 0 com.samsung.android.visionintelligence #Bixby Vision
	adb shell pm uninstall --user 0 com.samsung.android.bixby.agent # Bixby Voice
	adb shell pm uninstall --user 0 com.samsung.android.bixby.agent.dummy # Bixby debug app
	adb shell pm uninstall --user 0 com.samsung.android.bixbyvision.framework # Bixby Vision framework
}

Function RemoveGeneral {
	adb shell pm uninstall --user 0 com.android.egg # Android Easter Egg
	adb shell pm uninstall --user 0 com.sec.android.easyonehand # One hand mode
	adb shell pm uninstall --user 0 com.samsung.android.mateagent # Galaxy Friends
	adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub # Galaxy Watch
	adb shell pm uninstall --user 0 com.sec.android.daemonapp # Samsung Weather
	adb shell pm uninstall --user 0 com.samsung.android.app.social # What's New
	adb shell pm uninstall --user 0 com.sec.android.app.voicenote # Voice Recorder
	adb shell pm uninstall --user 0 com.samsung.android.oneconnect # Smart Things
	adb shell pm uninstall --user 0 com.samsung.android.voc # Samsung Members
	adb shell pm uninstall --user 0 com.google.android.feedback # Google Feedback
	adb shell pm uninstall --user 0 com.android.vpndialogs
	adb shell pm uninstall --user 0 com.samsung.android.app.dressroom # Samsung Wallpapers
	adb shell pm uninstall --user 0 com.samsung.android.scloud # Samsung Cloud
	adb shell pm uninstall --user 0 com.samsung.android.sdk.handwriting # Handwriting for Note Devices
	adb shell pm uninstall --user 0 com.samsung.android.universalswitch # Certain gestures
	adb shell pm uninstall --user 0 com.samsung.android.widgetapp.yahooedge.finance # Yahoo app
	adb shell pm uninstall --user 0 com.samsung.android.widgetapp.yahooedge.sport # Yahoo app
	adb shell pm uninstall --user 0 com.samsung.hiddennetworksetting # Secret Debugging tool
	adb shell pm uninstall --user 0 com.samsung.storyservice # monitor every one of the procedures running on your gadget
	adb shell pm uninstall --user 0 com.samsung.android.service.aircommand # Air command
	adb shell pm uninstall --user 0 com.samsung.android.ardrawing # AR Doodle
	adb shell pm uninstall --user 0 com.samsung.android.svoiceime # S voice (Old Bixby)
}

Function RemoveSamsungPay {
	adb shell pm uninstall --user 0 com.samsung.android.samsungpassautofill # Samsung Auto fill
	adb shell pm uninstall --user 0 com.samsung.android.authfw # Samsung Authentication
	adb shell pm uninstall --user 0 com.samsung.android.samsungpass # Samsung Pass
	adb shell pm uninstall --user 0 com.samsung.android.spay # Samsung Pay
	adb shell pm uninstall --user 0 com.samsung.android.spayfw # Samsung Pay Framework
}

Function RemoveRecreationalApps {
	adb shell pm uninstall --user 0 flipboard.boxer.app # Flipboard app
	adb shell pm uninstall --user 0 com.samsung.android.wellbeing # Digital wellbeing
	adb shell pm uninstall --user 0 com.samsung.android.da.daagent # Dual Messenger
	adb shell pm uninstall --user 0 com.samsung.android.service.livedrawing # Live Message
}

Function RemoveARemoji {
	adb shell pm uninstall --user 0 com.samsung.android.aremoji # AR Emoji
	adb shell pm uninstall --user 0 com.sec.android.mimage.avatarstickers # Stickers for AR Emoji app
}

Function RemoveStickers {
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.stamp.preload
	adb shell pm uninstall --user 0 com.samsung.android.stickercenter
	adb shell pm uninstall --user 0 com.samsung.android.stickerplugin
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearframe.preload
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearexpression.preload
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facear.preload
}

Function RemoveFacebook {
	adb shell pm uninstall --user 0 com.facebook.katana
	adb shell pm uninstall --user 0 com.facebook.system
	adb shell pm uninstall --user 0 com.facebook.appmanager
	adb shell pm uninstall --user 0 com.facebook.services
}

Function RemoveCarMode {
	adb shell pm uninstall --user 0 com.samsung.android.drivelink.stub #Samsung Car Mode
}

Function RemoveEmail {
	adb shell pm uninstall --user 0 com.samsung.android.email.provider
	adb shell pm uninstall --user 0 com.wsomacp
}

Function RemoveGameLauncher {
	adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
	adb shell pm uninstall --user 0 com.enhance.gameservice
	adb shell pm uninstall --user 0 com.samsung.android.game.gametools
	adb shell pm uninstall --user 0 com.samsung.android.game.gos
	adb shell pm uninstall --user 0 com.samsung.android.gametuner.thin
}

Function RemoveSamsungBrowser {
	adb shell pm uninstall --user 0 com.sec.android.app.sbrowser # Samsung Internet
}

Function RemoveGearVR {
	adb shell pm uninstall --user 0 com.samsung.android.hmt.vrsvc
	adb shell pm uninstall --user 0 com.samsung.android.app.vrsetupwizardstub
	adb shell pm uninstall --user 0 com.samsung.android.hmt.vrshell
	adb shell pm uninstall --user 0 com.google.vr.vrcore
}

Function RemoveKidsMode {
	adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller # Installs kids mode
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload # Camera stickers
	adb shell pm uninstall --user 0 com.sec.android.app.kidshome # Kids Home launcher
}

#Screencover is when you have a samsung case and it changes the screen when you close it to show data through a window in the case
Function RemoveScreenCover {
	adb shell pm uninstall --user 0 com.samsung.android.app.ledbackcover # Used with samsung cases
	adb shell pm uninstall --user 0 com.sec.android.cover.ledcover # Used with samsung cases
}

Function RemoveEdgeDisplay {
	adb shell pm uninstall --user 0 com.cnn.mobile.android.phone.edgepanel
	adb shell pm uninstall --user 0 com.samsung.android.service.peoplestripe # Edge panel plugin for contacts
	adb shell pm uninstall --user 0 com.samsung.android.app.sbrowseredge # Edge panel plugin for Samsung Internet
	adb shell pm uninstall --user 0 com.samsung.android.app.appsedge # App panel plugin for Edge display
}

Function RemoveDex {
	adb shell pm uninstall --user 0 com.sec.android.app.dexonpc # Samsung Dex
	adb shell pm uninstall --user 0 com.sec.android.desktopmode.uiservice
	adb shell pm uninstall --user 0 com.samsung.desktopsystemui
	adb shell pm uninstall --user 0 com.sec.android.app.desktoplauncher
}

# Relaunch the script with administrator privileges, By Disassembler
Function RequireAdmin {
	If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]"Administrator")) {
		Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`" $PSCommandArgs" -WorkingDirectory $pwd -Verb RunAs
		Exit
	}
}


##########
# Parse parameters and apply tweaks, By Disassembler
##########
# Normalize path to preset file
$preset = ""
$PSCommandArgs = $args
If ($args -And $args[0].ToLower() -eq "-preset") {
	$preset = Resolve-Path $($args | Select-Object -Skip 1)
	$PSCommandArgs = "-preset `"$preset`""
}

# Load function names from command line arguments or a preset file
If ($args) {
	$tweaks = $args
	If ($preset) {
		$tweaks = Get-Content $preset -ErrorAction Stop | ForEach { $_.Trim() } | Where { $_ -ne "" -and $_[0] -ne "#" }
	}
}

# Call the desired tweak functions
$tweaks | ForEach { Invoke-Expression $_ }
