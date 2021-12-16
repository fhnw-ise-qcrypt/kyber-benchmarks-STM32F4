################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/libcsp/src/crypto/csp_hmac.c \
../Drivers/libcsp/src/crypto/csp_sha1.c \
../Drivers/libcsp/src/crypto/csp_xtea.c 

OBJS += \
./Drivers/libcsp/src/crypto/csp_hmac.o \
./Drivers/libcsp/src/crypto/csp_sha1.o \
./Drivers/libcsp/src/crypto/csp_xtea.o 

C_DEPS += \
./Drivers/libcsp/src/crypto/csp_hmac.d \
./Drivers/libcsp/src/crypto/csp_sha1.d \
./Drivers/libcsp/src/crypto/csp_xtea.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/libcsp/src/crypto/%.o: ../Drivers/libcsp/src/crypto/%.c Drivers/libcsp/src/crypto/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/libcsp/include -I../Drivers/kyber/include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-libcsp-2f-src-2f-crypto

clean-Drivers-2f-libcsp-2f-src-2f-crypto:
	-$(RM) ./Drivers/libcsp/src/crypto/csp_hmac.d ./Drivers/libcsp/src/crypto/csp_hmac.o ./Drivers/libcsp/src/crypto/csp_sha1.d ./Drivers/libcsp/src/crypto/csp_sha1.o ./Drivers/libcsp/src/crypto/csp_xtea.d ./Drivers/libcsp/src/crypto/csp_xtea.o

.PHONY: clean-Drivers-2f-libcsp-2f-src-2f-crypto

