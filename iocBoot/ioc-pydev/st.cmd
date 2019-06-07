#!../../bin/linux-x86_64/pydev

< envPaths

epicsEnvSet("PYEPICS_LIBCA", "$(EPICS_BASE)/lib/linux-x86_64/libca.so")
#epicsEnvSet("DIAGSTD_DISABLE", "YES")
epicsEnvSet("PREFIX", "pydev:")

dbLoadDatabase("${TOP}/dbd/pydev.dbd",0,0)
pydev_registerRecordDeviceDriver(pdbbase)

py "import pydev"
py "pydev.build()"

dbLoadRecords("$(TOP)/db/pydev.db", "P=$(PREFIX)")

iocInit()

py "import post_init"
