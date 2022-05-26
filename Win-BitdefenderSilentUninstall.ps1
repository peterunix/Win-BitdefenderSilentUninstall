$ProgressPreference="SilentlyContinue"
$url="https://download.bitdefender.com/SMB/Hydra/release/bst_win/uninstallTool/BEST_uninstallTool.exe"

Invoke-WebRequest -Uri "$url" -OutFile "Best_uninstallTool.exe" -UseBasicParsing

if ($forceful -eq $true){
  BEST_uninstallTool.exe /bdparams /bruteForce /noWait
} else{
  BEST_uninstallTool.exe /bdparams /noWait
}
