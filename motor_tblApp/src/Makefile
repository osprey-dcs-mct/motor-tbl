TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = motor_tbl
# motor_tbl.dbd will be created and installed
DBD += motor_tbl.dbd

# motor_tbl.dbd will be made up from these files:
motor_tbl_DBD += base.dbd

# Include dbd files from all support applications:
motor_tbl_DBD += asyn.dbd
motor_tbl_DBD += motorSupport.dbd
motor_tbl_DBD += motorSimSupport.dbd


# Add all the support libraries needed by this IOC
motor_tbl_LIBS += motorSimSupport
motor_tbl_LIBS += motor
motor_tbl_LIBS += asyn

# motor_tbl_registerRecordDeviceDriver.cpp derives from motor_tbl.dbd
motor_tbl_SRCS += motor_tbl_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
motor_tbl_SRCS_DEFAULT += motor_tblMain.cpp
motor_tbl_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#motor_tbl_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
motor_tbl_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

