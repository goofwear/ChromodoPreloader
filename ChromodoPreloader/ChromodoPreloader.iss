;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; InnoSetup Script - ChromodoPreloader.iss
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Copyright (C)2004 6XGate Incorporated
;
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
AppVerName=Chromodo Preloader 1.0 build 366
AppPublisher=6XGate Incorporated
AppPublisherURL=http://matt.sixxgate.com/
AppSupportURL=http://matt.sixxgate.com/forum/viewtopic.php?t=92
AppUpdatesURL=http://matt.sixxgate.com/forum/viewtopic.php?t=92
DefaultDirName={pf}\ChromodoPreloader
DefaultGroupName=Chromodo Preloader
DisableProgramGroupPage=false
Compression=lzma
SolidCompression=true
MinVersion=4.0.950,4.0.1381
AlwaysShowComponentsList=false
FlatComponentsList=false
ShowLanguageDialog=no
AppVersion=1.0.366.0
UninstallDisplayIcon={app}\ChromodoPreloader.exe
UninstallDisplayName=Chromodo Preloader
UsePreviousGroup=true
OutputBaseFilename=ChromodoPreloaderSetup
VersionInfoVersion=1.0.366.0
VersionInfoCompany=6XGate Incorporated
AppCopyright=Copyright ©2005 6XGate Incorporated
SetupIconFile=.\res\SetupIcon.ico
OutputDir=.\Release\
VersionInfoTextVersion=1.0 build 366
InfoBeforeFile=
LicenseFile=.\License.txt
WizardImageFile=.\res\setup-large.bmp
WizardSmallImageFile=.\res\setup-small.bmp
WizardImageBackColor=clWhite
TimeStampsInUTC=true

[Files]
Source: .\Release\ChromodoPreloader.exe; DestDir: {app}; Flags: ignoreversion restartreplace uninsrestartdelete; Components: prog
DestDir: {app}; Source: .\ReadMe.txt; Components: docs; Flags: isreadme
DestDir: {app}; Source: .\Manual.html; Components: docs
DestDir: {app}; Source: .\ChangeLog.txt; Components: docs
DestDir: {app}; Source: .\License.txt; Components: docs
DestDir: {sys}; Source: .\redist\MFC42.DLL; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys
DestDir: {sys}; Source: .\redist\MSVCRT.DLL; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys
DestDir: {sys}; Source: .\redist\PSAPI.DLL; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys
DestDir: {sys}; Source: ..\RegistryClass\Release\regclass.dll; Flags: sharedfile restartreplace uninsrestartdelete; Components: sys

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
Root: HKCU; Subkey: SOFTWARE\6XGate Incorporated\ChromodoPreload; Flags: uninsdeletekey
Root: HKCU; Subkey: SOFTWARE\6XGate Incorporated; Flags: uninsdeletekeyifempty

[Tasks]
Name: startup; Description: Launch Chromodo Preloader at Windows Startup
