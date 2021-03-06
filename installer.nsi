; Script generated by the HM NIS Edit Script Wizard.

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "PythonOS"
!define PRODUCT_VERSION "1.1 Beta"
!define PRODUCT_PUBLISHER "TechnologyFlynn Innovations"
!define PRODUCT_WEB_SITE "http://pythonos.googlecode.com"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\PythonOS.py"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install-colorful.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall-colorful.ico"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; License page
!define MUI_LICENSEPAGE_RADIOBUTTONS
!insertmacro MUI_PAGE_LICENSE "..\..\Desktop\PythonOSLicense.txt"
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\PythonOS.py"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "PythonOSSetup.exe"
InstallDir "$PROGRAMFILES\PythonOS"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Section "MainSection" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite ifnewer
  File "webtest.py"
  File "webserver.py"
  File "usrdata.dat"
  File "updatebackup.bat"
  File "uninstall.ico"
  File "setupstatus.dat"
  File "setuprerun.py"
  File "restorebackup.bat"
  File "PythonOSBackup.pyos"
  File "PythonOS.py"
  CreateDirectory "$SMPROGRAMS\PythonOS"
  CreateShortCut "$SMPROGRAMS\PythonOS\PythonOS.lnk" "$INSTDIR\PythonOS.py"
  CreateShortCut "$DESKTOP\PythonOS.lnk" "$INSTDIR\PythonOS.py"
  File "pythonos.ico"
  File "pythonlogo.jpg"
  File "pyoscore.pyc"
  File "pyoscore.py"
  File "pyoscommands.pyc"
  File "pyoscommands.py"
  File "pyosappapi.py"
  File "pynote.py"
  File "install.ico"
  File "datrw.py"
  File "datfilewriter.py"
  File "createbackup.bat"
  File "backupfiles.txt"
  File "7z.exe"
  File "7z.dll"
  File ".pydevproject"
  File ".project"
SectionEnd

Section -AdditionalIcons
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\PythonOS\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\PythonOS\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\PythonOS.py"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\PythonOS.py"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name) was successfully removed from your computer."
FunctionEnd

Function un.onInit
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "Are you sure you want to completely remove $(^Name) and all of its components?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\.project"
  Delete "$INSTDIR\.pydevproject"
  Delete "$INSTDIR\7z.dll"
  Delete "$INSTDIR\7z.exe"
  Delete "$INSTDIR\backupfiles.txt"
  Delete "$INSTDIR\createbackup.bat"
  Delete "$INSTDIR\datfilewriter.py"
  Delete "$INSTDIR\datrw.py"
  Delete "$INSTDIR\install.ico"
  Delete "$INSTDIR\pynote.py"
  Delete "$INSTDIR\pyosappapi.py"
  Delete "$INSTDIR\pyoscommands.py"
  Delete "$INSTDIR\pyoscommands.pyc"
  Delete "$INSTDIR\pyoscore.py"
  Delete "$INSTDIR\pyoscore.pyc"
  Delete "$INSTDIR\pythonlogo.jpg"
  Delete "$INSTDIR\pythonos.ico"
  Delete "$INSTDIR\PythonOS.py"
  Delete "$INSTDIR\PythonOSBackup.pyos"
  Delete "$INSTDIR\restorebackup.bat"
  Delete "$INSTDIR\setuprerun.py"
  Delete "$INSTDIR\setupstatus.dat"
  Delete "$INSTDIR\uninstall.ico"
  Delete "$INSTDIR\updatebackup.bat"
  Delete "$INSTDIR\usrdata.dat"
  Delete "$INSTDIR\webserver.py"
  Delete "$INSTDIR\webtest.py"

  Delete "$SMPROGRAMS\PythonOS\Uninstall.lnk"
  Delete "$SMPROGRAMS\PythonOS\Website.lnk"
  Delete "$DESKTOP\PythonOS.lnk"
  Delete "$SMPROGRAMS\PythonOS\PythonOS.lnk"

  RMDir "$SMPROGRAMS\PythonOS"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd