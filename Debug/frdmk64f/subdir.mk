################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../frdmk64f/board.c \
../frdmk64f/gpio_pins.c \
../frdmk64f/hardware_init.c \
../frdmk64f/pin_mux.c 

OBJS += \
./frdmk64f/board.o \
./frdmk64f/gpio_pins.o \
./frdmk64f/hardware_init.o \
./frdmk64f/pin_mux.o 

C_DEPS += \
./frdmk64f/board.d \
./frdmk64f/gpio_pins.d \
./frdmk64f/hardware_init.d \
./frdmk64f/pin_mux.d 


# Each subdirectory must supply rules for building sources it contributes
frdmk64f/%.o: ../frdmk64f/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -D"CPU_MK64FN1M0VMD12" -I"../Sources" -I"../Project_Settings/Startup_Code" -I"../SDK/platform/CMSIS/Include" -I"../SDK/platform/devices" -I"../SDK/platform/devices/MK64F12/include" -I"C:\Freescale\KSDK_1.2.0/platform/hal/inc" -I"C:\Freescale\KSDK_1.2.0/platform/hal/src" -I"C:\Freescale\KSDK_1.2.0/platform/drivers/inc" -I"C:\Freescale\KSDK_1.2.0/platform/drivers/src" -I"C:\Freescale\KSDK_1.2.0/platform/composite/src" -I"C:\Freescale\KSDK_1.2.0/platform/composite/inc" -I"C:\Freescale\KSDK_1.2.0/platform/osa/src" -I"C:\Freescale\KSDK_1.2.0/platform/osa/inc" -I"C:\Freescale\KSDK_1.2.0/platform/system/src" -I"C:\Freescale\KSDK_1.2.0/platform/system/inc" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/src" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/inc" -I"C:\Freescale\KSDK_1.2.0/platform/devices/MK64F12/include" -I"C:\Freescale\KSDK_1.2.0/platform/CMSIS/Include" -I"U:\Year 5\Project\Kinetis\LED Test\frdmk64f" -I"C:\Freescale\KSDK_1.2.0/platform/system/src/clock" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/inc" -I"C:\Freescale\KSDK_1.2.0/platform/utilities/src" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


