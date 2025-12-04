try{
	Invoke-WebRequest -Uri 'https://github.com/hereelabs/ORRH-UGC-Repository/archive/refs/heads/main.zip' -OutFile .\ORRH-UGC-Repository-main.zip
	Expand-Archive -Path .\ORRH-UGC-Repository-main.zip -DestinationPath .\

	Get-Item .\ORRH-UGC-Repository-main.zip -ErrorAction SilentlyContinue | Remove-Item
	
	#Move-Item -Path .\ORRH-UGC-Repository-main\* -Destination .\ -Force
	Copy-Item .\ORRH-UGC-Repository-main\* .\ -Recurse -Force
	Get-Item .\ORRH-UGC-Repository-main -ErrorAction -Recurse -Force SilentlyContinue | Remove-Item
 
} catch {
	Write-Host "$($_.Exception.Message)"
}