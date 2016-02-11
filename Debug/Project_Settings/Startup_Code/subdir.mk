################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Project_Settings/Startup_Code/startup.c \
../Project_Settings/Startup_Code/system_MK64F12.c 

S_UPPER_SRCS += \
../Project_Settings/Startup_Code/startup_MK64F12.S 

OBJS += \
./Project_Settings/Startup_Code/startup.o \
./Project_Settings/Startup_Code/startup_MK64F12.o \
./Project_Settings/Startup_Code/system_MK64F12.o 

C_DEPS += \
./Project_Settings/Startup_Code/startup.d \
./Project_Settings/Startup_Code/system_MK64F12.d 

S_UPPER_DEPS += \
./Project_Settings/Startup_Code/startup_MK64F12.d 


# Each subdirectory must supply rules for building sources it contributes
Project_Settings/Startup_Code/%.o: ../Project_Settings/Startup_Code/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -D"CPU_MK64FN1M0VMD12" -I"../Sources" -I"../Project_Settings/Startup_Code" -I"../SDK/platform/CMSIS/Include" -I"../SDK/platform/devices" -I"../SDK/platform/devices/MK64F12/include" -I"C:\Freescale\KSDK_1.2.0/platform/hal/inc" -I"C:\Freescale\KSDK_1.2.0/platform/hal/src" -I"C:\Freescale\KSDK_1.2.0/platform/drivers/inc" -I"C:\Freescale\KSDK_1.2.0/platform/drivers/src" -I"C:\Freescale\KSDK_1.2.0/platform/composite/src" -I"C:\Freescale\KSDK_1.2.0/platform/composite/inc" -I"C:\Freescale\KSDK_1.2.0/platform/osa/src" -I"C:\Freescale\KSDK_1.2.0/platform/osa/inc" -I"C:\Freescale\KSDK_1.2.0/platform/system/src" -I"C:\Freescale\KSDK_1.2.0/platform/system/inc" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/src" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/inc" -I"C:\Freescale\KSDK_1.2.0/platform/devices/MK64F12/include" -I"C:\Freescale\KSDK_1.2.0/platform/CMSIS/Include" -I"U:\Year 5\Project\Kinetis\LED Test\frdmk64f" -I"C:\Freescale\KSDK_1.2.0/platform/system/src/clock" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/inc" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/src" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Project_Settings/Startup_Code/%.o: ../Project_Settings/Startup_Code/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM GNU Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/inc" -I"C:\Freescale\KSDK_1.2.0/platfrom/drivers/inc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/adc16" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/aoi" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/cmp" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/cop" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/crc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/cyclicAdc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/dac" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/dma" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/dmamux" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/dspi" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/edma" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/enc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/enet" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/ewm" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/flexbus" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/flexcan" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/flexio" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/ftm" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/gpio" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/i2c" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/llwu" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/lpsci" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/lptmr" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/lpuart" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/mcg" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/mcglite" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/mmdvsq" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/mpu" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/osc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/pdb" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/pit" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/port" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/pwm" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/rcm" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/rnga" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/rtc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/sai" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/sdhc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/sim" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/smc" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/spi" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/tpm" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/tsi" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/uart" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/vref" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/wdog" -I"C:\Freescale\KSDK_1.2.0/platfrom/hal/src/xbar" -I"C:\Freescale\KSDK_1.2.0/platfrom/drivers/src" -I"C:\Freescale\KSDK_1.2.0/platfrom/devices/src" -I"C:\Freescale\KSDK_1.2.0/platfrom/devices/inc" -I"C:\Freescale\KSDK_1.2.0/platfrom/CMSIS/src" -I"C:\Freescale\KSDK_1.2.0/platfrom/CMSIS/inc" -I"C:\Freescale\KSDK_1.2.0/platfrom/composite/src" -I"C:\Freescale\KSDK_1.2.0/platfrom/composite/inc" -I"C:\Freescale\KSDK_1.2.0/platfrom/osa/src" -I"C:\Freescale\KSDK_1.2.0/platfrom/osa/inc" -I"C:\Freescale\KSDK_1.2.0/platfrom/system/src" -I"C:\Freescale\KSDK_1.2.0/platfrom/system/inc" -I"C:\Freescale\KSDK_1.2.0/platfrom/utilities/src" -I"C:\Freescale\KSDK_1.2.0/platfrom/utilities/inc" -I"C:\Freescale\KSDK_1.2.0/platform/hal/src" -I"C:\Freescale\KSDK_1.2.0/platform/CMSIS/Include" -I"U:\Year 5\Project\Kinetis\LED Test\frdmk64f" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


