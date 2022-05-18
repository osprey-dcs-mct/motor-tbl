#!../../bin/darwin-x86/motor_tbl

#- You may have to change motor_tbl to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/motor_tbl.dbd"
motor_tbl_registerRecordDeviceDriver pdbbase

motorSimCreateController("motorSim2", 8)
#asynSetTraceIOMask("motorSim2", 0, 4)
#asynSetTraceMask("motorSim2", 0, 255)

# motorSimConfigAxis(port, axis, lowLimit, highLimit, home, start)
motorSimConfigAxis("motorSim2", 0, 20000, -20000, 0, 0)
motorSimConfigAxis("motorSim2", 1, 20000, -20000, 0, 0)
motorSimConfigAxis("motorSim2", 2, 20000, -20000, 0, 0)
motorSimConfigAxis("motorSim2", 3, 20000, -20000, 0, 0)
motorSimConfigAxis("motorSim2", 4, 20000, -20000, 0, 0)
motorSimConfigAxis("motorSim2", 5, 20000, -20000, 0, 0)
motorSimConfigAxis("motorSim2", 6, 20000, -20000, 0, 0)
motorSimConfigAxis("motorSim2", 7, 20000, -20000, 0, 0)

## Load record instances
dbLoadTemplate("db/motor.substitutions")

cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
