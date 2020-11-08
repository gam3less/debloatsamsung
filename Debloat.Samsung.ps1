# Note: Some of the code was made by Disassembler <disassembler@dasm.cz> <https://github.com/Disassembler0/>
# The code made by them is marked, anything not marked was made by yours truly (Gam3less)
#
# !!! Note: Never run scripts without reading them & understanding what they do.

$tweaks = @(
	### Requires administrator privileges ###
	"RequireAdmin",
	"InstallADB",
	"HowTo",
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
# Explains to the user what to do and asks
Function HowTo {
	do
 {
    Clear-Host
		Write-Host "====== How to get device ready ======"
		Write-Host "Go to Settings > About Phone > Software Infomation"
		Write-Host "Tap on 'Build Number' 7 times or until it enables developer mode (Insert pin)"
		Write-Host "Go back to settings and go into 'Developer options'"
		Write-Host "Find 'USB debugging' and enable it"
		Write-Host "Plug device into your computer and press allow"
		Write-Host "Make sure only one device is plugged in"
		Write-Host ""
		Write-Host "Type 'R' to re-run the script after you have done this."
		Write-host ""
		adb devices
		Write-Host ""
		Write-Host "If it says 'Unauthorised' unplug the cable for your phone, plug it back in and press allow"
		Write-Host ""
		Write-Host "Does it say there is a device?"
	  Write-Host "Y: Yes"
    Write-Host "N: No"
		Write-Host "R: Re-runs the script"
    $pluggedin = Read-Host "Please make a selection"
    switch ($pluggedin)
    {
	'y' { adb devices }
	'n' { Exit }
	'r' { Howto }
    }
 }
 until ($pluggedin -match "y" -or $pluggedin -match "n" -or $pluggedin -match "r")
}

#Installs Chocolatey and adb
Function InstallADB {
		Clear-Host
		Write-Host "Installing Chocolatey"
		Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
		choco install chocolatey-core.extension -y
		Clear-Host
		Write-Host "Installing ADB"
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
			Clear-Host
			Write-Host "This removes all bixby components."
			Show-Menu-Ask -Title "Bixby" -runfunction "RemoveBixby"
		}

Function AskGeneral {
			Clear-Host
			Write-Host ""
			Write-Host "-This will remove:"
			Write-Host "-Android Easter Egg"
			Write-Host "-One hand mode"
			Write-Host "-Galaxy Friends"
			Write-Host "-Galaxy Watch"
			Write-Host "-Samsung Weather"
			Write-Host "-What's New"
			Write-Host "-Voice Recorder"
			Write-Host "-Smart Things"
			Write-Host "-Samsung Members"
			Write-Host "-Google feedback"
			Write-Host "-Samsung Wallpapers"
			Write-Host "-Samsung Cloud"
			Write-Host "-Handwriting for Note Devices"
			Write-Host "-Certain gestures"
			Write-Host "-Yahoo finance"
			Write-Host "-Yahoo sport"
			Write-Host "-Secret Debugging tool"
			Write-Host "-Story service"
			Write-Host "-Air command"
			Write-Host "-AR Doodle"
			Write-Host "-S voice (Old Bixby)"
			Write-Host ""
			Show-Menu-Ask -Title "General Bloatware" -runfunction "RemoveGeneral"
		}

Function AskSamsungpay {
			Clear-Host
			Show-Menu-Ask -Title "SamsungPay" -runfunction "RemoveSamsungpay"
		}

Function AskRecreationalApps {
			Clear-Host
			Write-Host ""
			Write-Host "-This will remove:"
			Write-Host "-Flipboard app"
			Write-Host "-Digital wellbeing"
			Write-Host "-Dual Messenger"
			Write-Host "-Live Message"
			Write-Host ""
			Show-Menu-Ask -Title "Recreational Apps" -runfunction "RemoveRecreationalApps"
		}

Function AskARemoji {
			Clear-Host
			Show-Menu-Ask -Title "AR Emojis" -runfunction "RemoveARemoji"
		}

Function AskStickers {
			Clear-Host
			Show-Menu-Ask -Title "Samsung Stickers" -runfunction "RemoveStickers"
		}

Function AskFacebook {
			Clear-Host
			Show-Menu-Ask -Title "Facebook" -runfunction "RemoveFacebook"
		}

Function AskCarMode {
			Clear-Host
			Show-Menu-Ask -Title "Car Mode" -runfunction "RemoveCarMode"
		}

Function AskEmail {
			Clear-Host
			Show-Menu-Ask -Title "Samsung Email" -runfunction "RemoveEmail"
		}

Function AskGameLauncher {
			Clear-Host
			Show-Menu-Ask -Title "Game Launcher" -runfunction "RemoveGameLauncher"
		}

Function AskSamsungBrowser {
			Clear-Host
			Show-Menu-Ask -Title "Samsung Browser" -runfunction "RemoveSamsungBrowser"
		}

Function AskGearVR {
			Clear-Host
			Show-Menu-Ask -Title "Gear VR" -runfunction "RemoveGearVR"
		}

Function AskKidsMode {
			Clear-Host
			Show-Menu-Ask -Title "Kids Mode" -runfunction "RemoveKidsMode"
		}

Function AskScreenCover {
			Clear-Host
			Write-Host "Note: Screencover is when you have a samsung case and it changes"
			Write-Host "the screen when you close it to show data through a window in the case"
			Write-Host ""
			Show-Menu-Ask -Title "Screencover" -runfunction "RemoveScreenCover"
		}

Function AskEdgeDisplay {
			Clear-Host
			Show-Menu-Ask -Title "Edge Display" -runfunction "RemoveEdgeDisplay"
		}

Function AskDex {
			Clear-Host
			Show-Menu-Ask -Title "Samsung Dex" -runfunction "RemoveDex"
		}
#####
# Place a # before anything you dont want to remove
#####
#Removes Bixby and all Bixby components
Function RemoveBixby {
	Write-Host "Removing Bixby..."
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
	Write-Host "Removing Android Easter Egg..."
	adb shell pm uninstall --user 0 com.android.egg # Android Easter Egg
	Write-Host "Removing One Hand Mode..."
	adb shell pm uninstall --user 0 com.sec.android.easyonehand # One hand mode
	Write-Host "Removing Galaxy Friends..."
	adb shell pm uninstall --user 0 com.samsung.android.mateagent # Galaxy Friends
	Write-Host "Removing Galaxy Watch Manager..."
	adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub # Galaxy Watch
	Write-Host "Removing Samsung Weather..."
	adb shell pm uninstall --user 0 com.sec.android.daemonapp # Samsung Weather
	Write-Host "Removing What's New..."
	adb shell pm uninstall --user 0 com.samsung.android.app.social # What's New
	Write-Host "Removing Voice Recorder..."
	adb shell pm uninstall --user 0 com.sec.android.app.voicenote # Voice Recorder
	Write-Host "Removing Smart Things..."
	adb shell pm uninstall --user 0 com.samsung.android.oneconnect # Smart Things
	Write-Host "Removing Samsung Members..."
	adb shell pm uninstall --user 0 com.samsung.android.voc # Samsung Members
	Write-Host "Removing Google Feedback..."
	adb shell pm uninstall --user 0 com.google.android.feedback # Google feedback
	#Write-Host "Removing VPN dialogs..."
	#adb shell pm uninstall --user 0 com.android.vpndialogs
	Write-Host "Removing Samsung Wallpapers..."
	adb shell pm uninstall --user 0 com.samsung.android.app.dressroom # Samsung Wallpapers
	Write-Host "Removing Samsung Cloud..."
	adb shell pm uninstall --user 0 com.samsung.android.scloud # Samsung Cloud
	Write-Host "Removing Hardwriting for note devices..."
	adb shell pm uninstall --user 0 com.samsung.android.sdk.handwriting # Handwriting for Note Devices
	Write-Host "Removing Special Gestures..."
	adb shell pm uninstall --user 0 com.samsung.android.universalswitch # Certain gestures
	Write-Host "Removing Yahoo Edge..."
	adb shell pm uninstall --user 0 com.samsung.android.widgetapp.yahooedge.finance # Yahoo app
	adb shell pm uninstall --user 0 com.samsung.android.widgetapp.yahooedge.sport # Yahoo app
	Write-Host "Removing Hidden Debug Tool..."
	adb shell pm uninstall --user 0 com.samsung.hiddennetworksetting # Secret Debugging tool
	Write-Host "Removing Story Service..."
	adb shell pm uninstall --user 0 com.samsung.storyservice # monitor every one of the procedures running on your gadget
	Write-Host "Removing Air Command..."
	adb shell pm uninstall --user 0 com.samsung.android.service.aircommand # Air command
	Write-Host "Removing AR Doodle..."
	adb shell pm uninstall --user 0 com.samsung.android.ardrawing # AR Doodle
	Write-Host "Removing S voice..."
	adb shell pm uninstall --user 0 com.samsung.android.svoiceime # S voice (Old Bixby)
}

Function RemoveSamsungPay {
	Write-Host "Removing Samsung Pay..."
	adb shell pm uninstall --user 0 com.samsung.android.samsungpassautofill # Samsung Auto fill
	adb shell pm uninstall --user 0 com.samsung.android.authfw # Samsung Authentication
	adb shell pm uninstall --user 0 com.samsung.android.samsungpass # Samsung Pass
	adb shell pm uninstall --user 0 com.samsung.android.spay # Samsung Pay
	adb shell pm uninstall --user 0 com.samsung.android.spayfw # Samsung Pay Framework
}

Function RemoveRecreationalApps {
	Write-Host "Removing Flipboard..."
	adb shell pm uninstall --user 0 flipboard.boxer.app # Flipboard app
	Write-Host "Removing Digital Wellbeing..."
	adb shell pm uninstall --user 0 com.samsung.android.wellbeing # Digital wellbeing
	Write-Host "Removing Duel Messenger..."
	adb shell pm uninstall --user 0 com.samsung.android.da.daagent # Dual Messenger
	Write-Host "Removing Live Message..."
	adb shell pm uninstall --user 0 com.samsung.android.service.livedrawing # Live Message
}

Function RemoveARemoji {
	Write-Host "Removing AR Emojis..."
	adb shell pm uninstall --user 0 com.samsung.android.aremoji # AR Emoji
	adb shell pm uninstall --user 0 com.sec.android.mimage.avatarstickers # Stickers for AR Emoji app
}

Function RemoveStickers {
	Write-Host "Removing Stickers..."
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.stamp.preload
	adb shell pm uninstall --user 0 com.samsung.android.stickercenter
	adb shell pm uninstall --user 0 com.samsung.android.stickerplugin
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearframe.preload
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearexpression.preload
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facear.preload
}

Function RemoveFacebook {
	Write-Host "Removing Facebook..."
	adb shell pm uninstall --user 0 com.facebook.katana
	adb shell pm uninstall --user 0 com.facebook.system
	adb shell pm uninstall --user 0 com.facebook.appmanager
	adb shell pm uninstall --user 0 com.facebook.services
}

Function RemoveCarMode {
	Write-Host "Removing Car Mode..."
	adb shell pm uninstall --user 0 com.samsung.android.drivelink.stub #Samsung Car Mode
}

Function RemoveEmail {
	Write-Host "Removing Samsung Email..."
	adb shell pm uninstall --user 0 com.samsung.android.email.provider
	adb shell pm uninstall --user 0 com.wsomacp
}

Function RemoveGameLauncher {
	Write-Host "Removing Samsung Game Launcher..."
	adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
	adb shell pm uninstall --user 0 com.enhance.gameservice
	adb shell pm uninstall --user 0 com.samsung.android.game.gametools
	adb shell pm uninstall --user 0 com.samsung.android.game.gos
	adb shell pm uninstall --user 0 com.samsung.android.gametuner.thin
}

Function RemoveSamsungBrowser {
	Write-Host "Removing Samsung Internet..."
	adb shell pm uninstall --user 0 com.sec.android.app.sbrowser # Samsung Internet
}

Function RemoveGearVR {
	Write-Host "Removing Gear VR..."
	adb shell pm uninstall --user 0 com.samsung.android.hmt.vrsvc
	adb shell pm uninstall --user 0 com.samsung.android.app.vrsetupwizardstub
	adb shell pm uninstall --user 0 com.samsung.android.hmt.vrshell
	adb shell pm uninstall --user 0 com.google.vr.vrcore
}

Function RemoveKidsMode {
	Write-Host "Removing Kids Mode..."
	adb shell pm uninstall --user 0 com.samsung.android.kidsinstaller # Installs kids mode
	adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facearavatar.preload # Camera stickers
	adb shell pm uninstall --user 0 com.sec.android.app.kidshome # Kids Home launcher
}

#Screencover is when you have a samsung case and it changes the screen when you close it to show data through a window in the case
Function RemoveScreenCover {
	Write-Host "Removing Screen Cover..."
	adb shell pm uninstall --user 0 com.samsung.android.app.ledbackcover # Used with samsung cases
	adb shell pm uninstall --user 0 com.sec.android.cover.ledcover # Used with samsung cases
}

Function RemoveEdgeDisplay {
	Write-Host "Removing Edge Display..."
	adb shell pm uninstall --user 0 com.cnn.mobile.android.phone.edgepanel
	adb shell pm uninstall --user 0 com.samsung.android.service.peoplestripe # Edge panel plugin for contacts
	adb shell pm uninstall --user 0 com.samsung.android.app.sbrowseredge # Edge panel plugin for Samsung Internet
	adb shell pm uninstall --user 0 com.samsung.android.app.appsedge # App panel plugin for Edge display
}

Function RemoveDex {
	Write-Host "Removing Samsung Dex..."
	adb shell pm uninstall --user 0 com.sec.android.app.dexonpc # Samsung Dex
	adb shell pm uninstall --user 0 com.sec.android.desktopmode.uiservice
	adb shell pm uninstall --user 0 com.samsung.desktopsystemui
	adb shell pm uninstall --user 0 com.sec.android.app.desktoplauncher
}

# Relaunch the script with administrator privileges, By Disassembler
Function RequireAdmin {
	Write-Host "Checking if ran in admin..."
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
