:: original idea from http://superuser.com/questions/392061/how-to-make-a-shortcut-from-cmd
:: adapted by @lucianweber / github.com/lucianw

@echo off
bitsadmin.exe /transfer "DownloadSpotifyPrideIcon" https://raw.githubusercontent.com/lucianw/spotify_pride/master/ico/spotify_pride64.ico %APPDATA%\Spotify\spotify_pride64.ico
(
  echo Set oWS = WScript.CreateObject^("WScript.Shell"^) 
  echo sLinkFile = oWS.ExpandEnvironmentStrings^("%HOMEDRIVE%%HOMEPATH%\Desktop\Spotify.lnk"^)
  echo Set oLink = oWS.CreateShortcut^(sLinkFile^) 
  echo oLink.TargetPath = oWS.ExpandEnvironmentStrings^("%APPDATA%\Spotify\Spotify.exe"^)
  echo oLink.IconLocation = oWS.ExpandEnvironmentStrings^("%APPDATA%\Spotify\spotify_pride64.ico"^)
  echo oLink.Save
)1>cs.vbs
cscript //nologo .\cs.vbs
DEL cs.vbs /f /q