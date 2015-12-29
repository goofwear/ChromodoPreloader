;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; InnoSetup Script - ChromodoPreloader.iss
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; This file is part of Chromodo Preloader
;
; Chromodo Preloader is free software; you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published
; by the Free Software Foundation; either version 2 of the License, or
; (at your option) any later version.
;
; Chromodo Preloader is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with Chromodo Preloader; if not, write to the Free Software
; Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[Setup]
AppName=Chromodo Preloader
AppVerName=Chromodo Preloader 1.0 build 1
AppPublisher=GooFWeaR
AppPublisherURL=http://www.goofwear.com/windows/chromodopreloader
AppSupportURL=http://www.goofwear.com/windows/chromodopreloader
AppUpdatesURL=http://www.goofwear.com/windows/chromodopreloader
DefaultDirName={pf}\ChromodoPreloader
DefaultGroupName=Chromodo Preloader
DisableProgramGroupPage=false
Compression=lzma
SolidCompression=true
MinVersion=0,6.1.7600
AlwaysShowComponentsList=false
FlatComponentsList=false
ShowLanguageDialog=no
AppVersion=1.0.1.0
UninstallDisplayIcon={app}\ChromodoPreloader.exe
UninstallDisplayName=Chromodo Preloader
UsePreviousGroup=true
OutputBaseFilename=ChromodoPreloaderSetup
VersionInfoVersion=1.0.1.0
VersionInfoCompany=GooFWeaR
AppCopyright=Copyright ©GooFWeaR
SetupIconFile=.\res\SetupIcon.ico
OutputDir=.\Release\
VersionInfoTextVersion=1.0 build 1
InfoBeforeFile=
LicenseFile=.\License.txt
WizardImageFile=.\res\setup-large.bmp
WizardSmallImageFile=.\res\setup-small.bmp
WizardImageBackColor=clWhite
TimeStampsInUTC=true
VersionInfoCopyright=GooFWeaR
VersionInfoProductName=Chromodo Preloader
VersionInfoProductVersion=1

[Files]
Source: ".\ChromodoPreloader.exe"; DestDir: "{app}"; Flags: ignoreversion restartreplace uninsrestartdelete; Components: prog
Source: ".\regclassu.dll"; DestDir: "{app}"; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys
Source: ".\ReadMe.txt"; DestDir: "{app}"; Flags: isreadme; Components: docs
Source: ".\Manual.html"; DestDir: "{app}"; Components: docs
Source: ".\ChangeLog.txt"; DestDir: "{app}"; Components: docs
Source: ".\License.txt"; DestDir: "{app}"; Components: docs
Source: ".\redist\MFC42.DLL"; DestDir: "{sys}"; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys
Source: ".\redist\MSVCRT.DLL"; DestDir: "{sys}"; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys
Source: ".\redist\PSAPI.DLL"; DestDir: "{sys}"; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys

[Icons]
Name: {group}\Chromodo Preloader; Filename: {app}\ChromodoPreloader.exe; WorkingDir: {app}; IconIndex: 0; Components: prog
Name: {group}\ReadMe; Filename: {app}\ReadMe.txt; Components: docs
Name: {group}\Manual; Filename: {app}\Manual.html; Components: docs
Name: {group}\License; Filename: {app}\License.txt; Components: docs
Name: {group}\Change Log; Filename: {app}\ChangeLog.txt; Components: docs
Name: {group}\Uninstall Chromodo Preloader; Filename: {uninstallexe}
Name: {commonstartup}\Chromodo Preloader; Filename: {app}\ChromodoPreloader.exe; WorkingDir: {app}; IconFilename: {app}\ChromodoPreloader.exe; IconIndex: 0; Components: prog; Tasks: startup

[Run]
Filename: {app}\ChromodoPreloader.exe; Description: {cm:LaunchProgram,Chromodo Preloader}; Flags: nowait postinstall skipifsilent

[Components]
Name: prog; Description: Program Files; Flags: fixed; Types: custom compact full
Name: sys; Description: System Components; Flags: fixed; Types: custom compact full
Name: docs; Description: Documentation; Types: custom full

[Registry]
Root: HKCU; Subkey: SOFTWARE\GooFWeaR\ChromodoPreload; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\GooFWeaR; Flags: uninsdeletekeyifempty

[Tasks]
Name: startup; Description: Launch Chromodo Preloader at Windows Startup
