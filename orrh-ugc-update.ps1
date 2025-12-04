try{
	Invoke-WebRequest -Uri 'https://github.com/hereelabs/ORRH-UGC-Repository/archive/refs/heads/main.zip' -OutFile '.\ORRH-UGC-Repository-main.zip'
	Expand-Archive -Path '.\ORRH-UGC-Repository-main.zip' -DestinationPath '.\'
	Get-Item '.\ORRH-UGC-Repository-main.zip' -ErrorAction SilentlyContinue | Remove-Item
	Remove-Item '.\ORRH-UGC-Repository-main\OnlyRetroRobloxHere.WebServer.dll' -Force
	Remove-Item '.\ORRH-UGC-Repository-main\README.md' -Force
	Remove-Item '.\ORRH-UGC-Repository-main\PORTING.md' -Force
	Remove-Item '.\ORRH-UGC-Repository-main\GUIDE.md' -Force
	Remove-Item '.\ORRH-UGC-Repository-main\.gitignore' -Force
	Remove-Item '.\ORRH-UGC-Repository-main\.github' -Force
	# We don't want to overwrite the DLL file. That must be installed manually y'know. Just in case!
	# Also, who gives a shit about the github stuff? You'd be git cloning it anyways.
	# Speaking of github, the way I set up this repo was by "git clone"-ing the repository, then extracting
	# The ORRH files over it. Not overwriting obviously, since the DLL file and assets.json are modified.
	# There you go. That's how you do things. Have fun. NEVER RUN THIS SCRIPT IF YOU ARE DEVELOPING SHIT.
	# Literally just git pull. It does the same thing.
	Copy-Item '.\ORRH-UGC-Repository-main\*' './' -Recurse -Force
	Remove-Item '.\ORRH-UGC-Repository-main' -Recurse -Force
 
} catch {
	Write-Host "$($_.Exception.Message)"
}