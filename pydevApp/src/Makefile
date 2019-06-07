TOP=../..

include $(TOP)/configure/CONFIG
include $(PYDEVSUP)/configure/CONFIG_SITE
include $(PYDEVSUP)/configure/CONFIG_PY

PROD_IOC = pydev
DBD += pydev.dbd

pydev_DBD += base.dbd
pydev_DBD += pyDevSup.dbd

pydev_LIBS += pyDevSup$(PY_LD_VER)

pydev_SRCS += pydev_registerRecordDeviceDriver.cpp
pydev_SRCS_DEFAULT += pydevMain.cpp

pydev_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES
include $(PYDEVSUP)/configure/RULES_PY
