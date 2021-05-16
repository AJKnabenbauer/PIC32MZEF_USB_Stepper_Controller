#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/bsp/bsp.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/clk/plib_clk.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/coretimer/plib_coretimer.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/evic/plib_evic.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/gpio/plib_gpio.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp8.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp5.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/tmr/plib_tmr2.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/uart/plib_uart6.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/stdio/xc32_monitor.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/system/int/src/sys_int.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc_acm.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/initialization.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/interrupts.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/exceptions.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb_device_init_data.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/tasks.c ../../../../HarmonyProjects/MyProject_4/firmware/src/app.c ../../../../HarmonyProjects/MyProject_4/firmware/src/main.cpp ../../../../HarmonyProjects/MyProject_4/firmware/src/usb_com_port.cpp

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/694295097/bsp.o ${OBJECTDIR}/_ext/490896790/drv_usbhs.o ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o ${OBJECTDIR}/_ext/2068470151/plib_clk.o ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o ${OBJECTDIR}/_ext/301865530/plib_evic.o ${OBJECTDIR}/_ext/301811702/plib_gpio.o ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o ${OBJECTDIR}/_ext/301408759/plib_uart6.o ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o ${OBJECTDIR}/_ext/404994212/sys_int.o ${OBJECTDIR}/_ext/763370911/usb_device.o ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1160401513/initialization.o ${OBJECTDIR}/_ext/1160401513/interrupts.o ${OBJECTDIR}/_ext/1160401513/exceptions.o ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o ${OBJECTDIR}/_ext/1160401513/tasks.o ${OBJECTDIR}/_ext/1003616436/app.o ${OBJECTDIR}/_ext/1003616436/main.o ${OBJECTDIR}/_ext/1003616436/usb_com_port.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/694295097/bsp.o.d ${OBJECTDIR}/_ext/490896790/drv_usbhs.o.d ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o.d ${OBJECTDIR}/_ext/2068470151/plib_clk.o.d ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o.d ${OBJECTDIR}/_ext/301865530/plib_evic.o.d ${OBJECTDIR}/_ext/301811702/plib_gpio.o.d ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o.d ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o.d ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o.d ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o.d ${OBJECTDIR}/_ext/301408759/plib_uart6.o.d ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o.d ${OBJECTDIR}/_ext/404994212/sys_int.o.d ${OBJECTDIR}/_ext/763370911/usb_device.o.d ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o.d ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o.d ${OBJECTDIR}/_ext/1160401513/initialization.o.d ${OBJECTDIR}/_ext/1160401513/interrupts.o.d ${OBJECTDIR}/_ext/1160401513/exceptions.o.d ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o.d ${OBJECTDIR}/_ext/1160401513/tasks.o.d ${OBJECTDIR}/_ext/1003616436/app.o.d ${OBJECTDIR}/_ext/1003616436/main.o.d ${OBJECTDIR}/_ext/1003616436/usb_com_port.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/694295097/bsp.o ${OBJECTDIR}/_ext/490896790/drv_usbhs.o ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o ${OBJECTDIR}/_ext/2068470151/plib_clk.o ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o ${OBJECTDIR}/_ext/301865530/plib_evic.o ${OBJECTDIR}/_ext/301811702/plib_gpio.o ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o ${OBJECTDIR}/_ext/301408759/plib_uart6.o ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o ${OBJECTDIR}/_ext/404994212/sys_int.o ${OBJECTDIR}/_ext/763370911/usb_device.o ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o ${OBJECTDIR}/_ext/1160401513/initialization.o ${OBJECTDIR}/_ext/1160401513/interrupts.o ${OBJECTDIR}/_ext/1160401513/exceptions.o ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o ${OBJECTDIR}/_ext/1160401513/tasks.o ${OBJECTDIR}/_ext/1003616436/app.o ${OBJECTDIR}/_ext/1003616436/main.o ${OBJECTDIR}/_ext/1003616436/usb_com_port.o

# Source Files
SOURCEFILES=../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/bsp/bsp.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/clk/plib_clk.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/coretimer/plib_coretimer.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/evic/plib_evic.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/gpio/plib_gpio.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp8.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp5.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/tmr/plib_tmr2.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/uart/plib_uart6.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/stdio/xc32_monitor.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/system/int/src/sys_int.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc_acm.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/initialization.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/interrupts.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/exceptions.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb_device_init_data.c ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/tasks.c ../../../../HarmonyProjects/MyProject_4/firmware/src/app.c ../../../../HarmonyProjects/MyProject_4/firmware/src/main.cpp ../../../../HarmonyProjects/MyProject_4/firmware/src/usb_com_port.cpp



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\..\..\..\HarmonyProjects\MyProject_4\firmware\src\config\default\p32MZ2048EFM144.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/694295097/bsp.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/bsp/bsp.c  .generated_files/5430ba4d41b2b840f0b212cea7c0836f4966e1af.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/694295097" 
	@${RM} ${OBJECTDIR}/_ext/694295097/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/694295097/bsp.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/694295097/bsp.o.d" -o ${OBJECTDIR}/_ext/694295097/bsp.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/490896790/drv_usbhs.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/ca6a8ca0050de24601f112d4917f35c944664064.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/490896790" 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/490896790/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/490896790/drv_usbhs.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/4e351cd1e651459054bce7f036a5b98449f42fd2.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/490896790" 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2068470151/plib_clk.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/clk/plib_clk.c  .generated_files/1d08a28cd8a9941ef6b67a04fb9b208541e32a0.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2068470151" 
	@${RM} ${OBJECTDIR}/_ext/2068470151/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/2068470151/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2068470151/plib_clk.o.d" -o ${OBJECTDIR}/_ext/2068470151/plib_clk.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1465287765/plib_coretimer.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/9d48f42e2697bfe70714711f426950f539501602.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1465287765" 
	@${RM} ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1465287765/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301865530/plib_evic.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/evic/plib_evic.c  .generated_files/10f77ae88aa6932ad63fa86632f7cddeff33225d.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301865530" 
	@${RM} ${OBJECTDIR}/_ext/301865530/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/301865530/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301865530/plib_evic.o.d" -o ${OBJECTDIR}/_ext/301865530/plib_evic.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301811702/plib_gpio.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/c1c89a781251a66a231a93f4a554e4616aef664f.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301811702" 
	@${RM} ${OBJECTDIR}/_ext/301811702/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/301811702/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301811702/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/301811702/plib_gpio.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301585742/plib_ocmp8.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp8.c  .generated_files/a3cdf64f068be474c1f06c79198b70a3d8a470de.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301585742" 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o.d 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301585742/plib_ocmp8.o.d" -o ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp8.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301585742/plib_ocmp5.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp5.c  .generated_files/414773265617db5cebd7a33d6ae06ffd0c7234d3.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301585742" 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o.d 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301585742/plib_ocmp5.o.d" -o ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp5.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301585742/plib_ocmp3.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/43c7689ba2a8f95296278ad920f70ce6a7ef1677.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301585742" 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301585742/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2068486526/plib_tmr2.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/dcdef6f4dcb9a4f348c0cce7578bd1274f3763b7.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2068486526" 
	@${RM} ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2068486526/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301408759/plib_uart6.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/uart/plib_uart6.c  .generated_files/d68dc70065ebb8a03bd3f0727df9dabc788a1cb7.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301408759" 
	@${RM} ${OBJECTDIR}/_ext/301408759/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/301408759/plib_uart6.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301408759/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/301408759/plib_uart6.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1481935855/xc32_monitor.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/ce4f395ff5154d99700b2bed0e99e902769cbae3.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1481935855" 
	@${RM} ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1481935855/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/404994212/sys_int.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/system/int/src/sys_int.c  .generated_files/602dee06bd8f178f3c4d67922221feca3627bef2.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404994212" 
	@${RM} ${OBJECTDIR}/_ext/404994212/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/404994212/sys_int.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404994212/sys_int.o.d" -o ${OBJECTDIR}/_ext/404994212/sys_int.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/763370911/usb_device.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device.c  .generated_files/9bec22fb2c21439aa2d55ab57e402f4e946735fb.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/763370911" 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763370911/usb_device.o.d" -o ${OBJECTDIR}/_ext/763370911/usb_device.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/763370911/usb_device_cdc.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc.c  .generated_files/8d56e850f275ad7d2ea12462193c7f4650155e7d.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/763370911" 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763370911/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc_acm.c  .generated_files/55b8fda05e0be0643329275a0316b10d6cd8463d.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/763370911" 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/initialization.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/initialization.c  .generated_files/231d9440236b275332dd1f2cb6319434875df953.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/initialization.o.d" -o ${OBJECTDIR}/_ext/1160401513/initialization.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/interrupts.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/interrupts.c  .generated_files/5efbaeffe0ceabc9595b0639ab385956121c7906.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/interrupts.o.d" -o ${OBJECTDIR}/_ext/1160401513/interrupts.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/exceptions.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/exceptions.c  .generated_files/969afad6ca9780b2d3b0b5e8a9fb358029f8282d.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/exceptions.o.d" -o ${OBJECTDIR}/_ext/1160401513/exceptions.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb_device_init_data.c  .generated_files/649f97198f4d49ace009cb290a2b5f057168c9c8.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/tasks.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/tasks.c  .generated_files/4522f923daf53b8240d968b692b661e2c03fa362.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/tasks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/tasks.o.d" -o ${OBJECTDIR}/_ext/1160401513/tasks.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1003616436/app.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/app.c  .generated_files/f6e026ec11fd92b7c25070e7fa14f03e44941cb2.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1003616436" 
	@${RM} ${OBJECTDIR}/_ext/1003616436/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1003616436/app.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1003616436/app.o.d" -o ${OBJECTDIR}/_ext/1003616436/app.o ../../../../HarmonyProjects/MyProject_4/firmware/src/app.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/694295097/bsp.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/bsp/bsp.c  .generated_files/a0805fd24f2bdfd17e623b8a72b0e822137e7356.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/694295097" 
	@${RM} ${OBJECTDIR}/_ext/694295097/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/694295097/bsp.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/694295097/bsp.o.d" -o ${OBJECTDIR}/_ext/694295097/bsp.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/490896790/drv_usbhs.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs.c  .generated_files/5f20e48a88e0920715e54e4c50233ad718a285a3.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/490896790" 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs.o.d 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/490896790/drv_usbhs.o.d" -o ${OBJECTDIR}/_ext/490896790/drv_usbhs.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c  .generated_files/89ef16544001dbb1e92543d56ec0e4c55299cff5.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/490896790" 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o.d" -o ${OBJECTDIR}/_ext/490896790/drv_usbhs_device.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/driver/usb/usbhs/src/drv_usbhs_device.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2068470151/plib_clk.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/clk/plib_clk.c  .generated_files/14f8290c17df72e8499d5cdd8831cf3365d1bfd0.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2068470151" 
	@${RM} ${OBJECTDIR}/_ext/2068470151/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/2068470151/plib_clk.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2068470151/plib_clk.o.d" -o ${OBJECTDIR}/_ext/2068470151/plib_clk.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1465287765/plib_coretimer.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/72f576331a09cbc41126ae14967afc2f4ab14b3d.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1465287765" 
	@${RM} ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1465287765/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1465287765/plib_coretimer.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301865530/plib_evic.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/evic/plib_evic.c  .generated_files/dd28692ba7c54c9c83c52e00a006ca00d7bcc766.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301865530" 
	@${RM} ${OBJECTDIR}/_ext/301865530/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/301865530/plib_evic.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301865530/plib_evic.o.d" -o ${OBJECTDIR}/_ext/301865530/plib_evic.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301811702/plib_gpio.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/c2491f9da6ea8c8dabf10b14043de0562e3ea3ab.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301811702" 
	@${RM} ${OBJECTDIR}/_ext/301811702/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/301811702/plib_gpio.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301811702/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/301811702/plib_gpio.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301585742/plib_ocmp8.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp8.c  .generated_files/5e5c57bbfb4eac2fc66930be3d71cbac530abb5.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301585742" 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o.d 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301585742/plib_ocmp8.o.d" -o ${OBJECTDIR}/_ext/301585742/plib_ocmp8.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp8.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301585742/plib_ocmp5.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp5.c  .generated_files/4368ccd3baf987deb53ed7aba34400de64caf2a4.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301585742" 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o.d 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301585742/plib_ocmp5.o.d" -o ${OBJECTDIR}/_ext/301585742/plib_ocmp5.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp5.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301585742/plib_ocmp3.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c  .generated_files/c1b8d59f62a69d95d98c324fd63d898178bed8d8.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301585742" 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o.d 
	@${RM} ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301585742/plib_ocmp3.o.d" -o ${OBJECTDIR}/_ext/301585742/plib_ocmp3.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/ocmp/plib_ocmp3.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/2068486526/plib_tmr2.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/tmr/plib_tmr2.c  .generated_files/c7b821f1b0e8620aeebf30fdaaf6ae65f639a236.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/2068486526" 
	@${RM} ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2068486526/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/2068486526/plib_tmr2.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/tmr/plib_tmr2.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/301408759/plib_uart6.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/uart/plib_uart6.c  .generated_files/4314ac54470f0950ccfc4d79b218791ee3036a8c.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/301408759" 
	@${RM} ${OBJECTDIR}/_ext/301408759/plib_uart6.o.d 
	@${RM} ${OBJECTDIR}/_ext/301408759/plib_uart6.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/301408759/plib_uart6.o.d" -o ${OBJECTDIR}/_ext/301408759/plib_uart6.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/peripheral/uart/plib_uart6.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1481935855/xc32_monitor.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/stdio/xc32_monitor.c  .generated_files/bd6b613384f06c1ff1450d615a66dbb294ef41e1.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1481935855" 
	@${RM} ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1481935855/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1481935855/xc32_monitor.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/404994212/sys_int.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/system/int/src/sys_int.c  .generated_files/b09c1b1d4eb54394402751f28c0e6be3ec9c8624.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/404994212" 
	@${RM} ${OBJECTDIR}/_ext/404994212/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/404994212/sys_int.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/404994212/sys_int.o.d" -o ${OBJECTDIR}/_ext/404994212/sys_int.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/763370911/usb_device.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device.c  .generated_files/a9ac7d375cf2661cc5732edf94d5f140d8aaba1d.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/763370911" 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763370911/usb_device.o.d" -o ${OBJECTDIR}/_ext/763370911/usb_device.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/763370911/usb_device_cdc.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc.c  .generated_files/7ff1f104cc03cbeb591c6140b9d2cc185ea45e7.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/763370911" 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o.d 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763370911/usb_device_cdc.o.d" -o ${OBJECTDIR}/_ext/763370911/usb_device_cdc.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc_acm.c  .generated_files/e727393d20b8eb203f30c038b43e618b329b77fd.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/763370911" 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o.d 
	@${RM} ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o.d" -o ${OBJECTDIR}/_ext/763370911/usb_device_cdc_acm.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb/src/usb_device_cdc_acm.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/initialization.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/initialization.c  .generated_files/7ec749ba15e255ad3dbcdd4e386c5413059e5648.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/initialization.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/initialization.o.d" -o ${OBJECTDIR}/_ext/1160401513/initialization.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/interrupts.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/interrupts.c  .generated_files/1ac53ae5d6e84084519c552478f4705b59a3a5a7.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/interrupts.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/interrupts.o.d" -o ${OBJECTDIR}/_ext/1160401513/interrupts.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/exceptions.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/exceptions.c  .generated_files/4c6f8a17cd089f66232ceea482e3b799e955ea1c.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/exceptions.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/exceptions.o.d" -o ${OBJECTDIR}/_ext/1160401513/exceptions.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb_device_init_data.c  .generated_files/eb01b64ef316363b3240b242507ddede0b827f02.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1160401513/usb_device_init_data.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1160401513/tasks.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/tasks.c  .generated_files/4bb639de3bb8c06dd942ae3cc4c3e13d466968.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1160401513" 
	@${RM} ${OBJECTDIR}/_ext/1160401513/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1160401513/tasks.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1160401513/tasks.o.d" -o ${OBJECTDIR}/_ext/1160401513/tasks.o ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1003616436/app.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/app.c  .generated_files/fe35e0768d35f32edbdada9d65eaf1c25477109f.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1003616436" 
	@${RM} ${OBJECTDIR}/_ext/1003616436/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1003616436/app.o 
	${MP_CPPC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1003616436/app.o.d" -o ${OBJECTDIR}/_ext/1003616436/app.o ../../../../HarmonyProjects/MyProject_4/firmware/src/app.c    -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1003616436/main.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/main.cpp  .generated_files/5487d08e76e7404d70e33aa4390480b3360c87b5.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1003616436" 
	@${RM} ${OBJECTDIR}/_ext/1003616436/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1003616436/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1003616436/main.o.d" -o ${OBJECTDIR}/_ext/1003616436/main.o ../../../../HarmonyProjects/MyProject_4/firmware/src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1003616436/usb_com_port.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/usb_com_port.cpp  .generated_files/2c176321e226756496f0e7753889d7102e6132e1.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1003616436" 
	@${RM} ${OBJECTDIR}/_ext/1003616436/usb_com_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1003616436/usb_com_port.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1003616436/usb_com_port.o.d" -o ${OBJECTDIR}/_ext/1003616436/usb_com_port.o ../../../../HarmonyProjects/MyProject_4/firmware/src/usb_com_port.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1003616436/main.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/main.cpp  .generated_files/3474244f9c40a8af7dc679cb565e5adbebce1d7c.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1003616436" 
	@${RM} ${OBJECTDIR}/_ext/1003616436/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1003616436/main.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1003616436/main.o.d" -o ${OBJECTDIR}/_ext/1003616436/main.o ../../../../HarmonyProjects/MyProject_4/firmware/src/main.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1003616436/usb_com_port.o: ../../../../HarmonyProjects/MyProject_4/firmware/src/usb_com_port.cpp  .generated_files/ee742efd2c5ee539f103f11a08a653e4c204a5ad.flag .generated_files/352acd90f95d7a7764c8069c4547fdb63e74455e.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1003616436" 
	@${RM} ${OBJECTDIR}/_ext/1003616436/usb_com_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1003616436/usb_com_port.o 
	${MP_CPPC} $(MP_EXTRA_CC_PRE)  -g -x c++ -c -mprocessor=$(MP_PROCESSOR_OPTION)  -frtti -fexceptions -fno-check-new -fenforce-eh-specs -ffunction-sections -O1 -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ2048EFM144_DFP" -MP -MMD -MF "${OBJECTDIR}/_ext/1003616436/usb_com_port.o.d" -o ${OBJECTDIR}/_ext/1003616436/usb_com_port.o ../../../../HarmonyProjects/MyProject_4/firmware/src/usb_com_port.cpp   -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)    
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/p32MZ2048EFM144.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../../../HarmonyProjects/MyProject_4/firmware/src/config/default/p32MZ2048EFM144.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CPPC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/hello_world.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
