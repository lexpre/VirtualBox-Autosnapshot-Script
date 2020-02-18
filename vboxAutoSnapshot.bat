REM snapshot
REM <uuid|vmname> insert machine name or machine uuid
REM
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot <uuid|vmname> edit "AutomaticBackup01" --name "AutomaticBackupOLD"
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot <uuid|vmname> edit "AutomaticBackup02" --name "AutomaticBackup01"
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot <uuid|vmname> edit "AutomaticBackup03" --name "AutomaticBackup02"
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot <uuid|vmname> edit "AutomaticBackup04" --name "AutomaticBackup03"
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot <uuid|vmname> edit "AutomaticBackup05" --name "AutomaticBackup04"
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot <uuid|vmname> take "AutomaticBackup05" --live
"C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" snapshot <uuid|vmname> delete "AutomaticBackupOLD"
REM pause
timeout 10
REM insert other snapshot after
