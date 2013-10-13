module GTop
  # Max CPU number
  NCPU = 32

  # Max groups for user
  MAX_GROUPS = 64

  # glibtop_get_proclist 2nd argument (which)
  KERN_PROC_ALL     = 0
  KERN_PROC_PID     = 1
  KERN_PROC_PGRP    = 2
  KERN_PROC_SESSION = 3
  KERN_PROC_TTY     = 4
  KERN_PROC_UID     = 5
  KERN_PROC_RUID    = 6
  KERN_PROC_MASK    = 15
  EXCLUDE_IDLE      = 0x1000
  EXCLUDE_SYSTEM    = 0x2000
  EXCLUDE_NOTTY     = 0x4000

  # glibtop_get_proc_map
  MAP_FILENAME_LEN = 215

  # glibtop_mountlist
  MOUNTENTRY_LEN = 79

  # GTop::OpenFilesEntryInfoNetworkSocket
  OPEN_DEST_HOST_LEN = 46

  # GTop::OpenFilesEntryInfoFile
  OPEN_FILENAME_LEN = 215

  # process_open_files
  FILE_TYPE_FILE        = 1
  FILE_TYPE_PIPE        = 2
  FILE_TYPE_INETSOCKET  = 4
  FILE_TYPE_LOCALSOCKET = 8
  FILE_TYPE_INET6SOCKET = 16
end