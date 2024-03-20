# CheckDisk

## Check full disk (recheck all clusters)

`chkdsk /f /v /r /b D:`  
*This is for NTFS volumes, remove the `/b` option for FAT32 volumes.*

## Check disk (check only healthy clusters)

`chkdsk /f /v /r D:`

## Check disk help

`chkdsk /?`

## Options meaning

- **/f** : Fixes errors on the disk. The disk must be locked. If chkdsk cannot lock the drive, a message appears that asks you if you want to check the drive the next time you restart the computer.
- **/v** : Displays the name of each file in every directory as the disk is checked.
- **/r** : Locates bad sectors and recovers readable information. The disk must be locked. /r includes the functionality of /f, with the additional analysis of physical disk errors.
- **/b** : Use with NTFS only. Clears the list of bad clusters on the volume and rescans all allocated and free clusters for errors. /b includes the functionality of /r. Use this parameter after imaging a volume to a new hard disk drive.
