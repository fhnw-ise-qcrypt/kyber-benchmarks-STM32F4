################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/kyber/src/aes256ctr.c \
../Drivers/kyber/src/cbd.c \
../Drivers/kyber/src/cpucycles.c \
../Drivers/kyber/src/fips202.c \
../Drivers/kyber/src/indcpa.c \
../Drivers/kyber/src/kem.c \
../Drivers/kyber/src/kex.c \
../Drivers/kyber/src/ntt.c \
../Drivers/kyber/src/poly.c \
../Drivers/kyber/src/polyvec.c \
../Drivers/kyber/src/randombytes.c \
../Drivers/kyber/src/reduce.c \
../Drivers/kyber/src/sha256.c \
../Drivers/kyber/src/sha512.c \
../Drivers/kyber/src/speed_print.c \
../Drivers/kyber/src/symmetric-aes.c \
../Drivers/kyber/src/symmetric-shake.c \
../Drivers/kyber/src/verify.c 

OBJS += \
./Drivers/kyber/src/aes256ctr.o \
./Drivers/kyber/src/cbd.o \
./Drivers/kyber/src/cpucycles.o \
./Drivers/kyber/src/fips202.o \
./Drivers/kyber/src/indcpa.o \
./Drivers/kyber/src/kem.o \
./Drivers/kyber/src/kex.o \
./Drivers/kyber/src/ntt.o \
./Drivers/kyber/src/poly.o \
./Drivers/kyber/src/polyvec.o \
./Drivers/kyber/src/randombytes.o \
./Drivers/kyber/src/reduce.o \
./Drivers/kyber/src/sha256.o \
./Drivers/kyber/src/sha512.o \
./Drivers/kyber/src/speed_print.o \
./Drivers/kyber/src/symmetric-aes.o \
./Drivers/kyber/src/symmetric-shake.o \
./Drivers/kyber/src/verify.o 

C_DEPS += \
./Drivers/kyber/src/aes256ctr.d \
./Drivers/kyber/src/cbd.d \
./Drivers/kyber/src/cpucycles.d \
./Drivers/kyber/src/fips202.d \
./Drivers/kyber/src/indcpa.d \
./Drivers/kyber/src/kem.d \
./Drivers/kyber/src/kex.d \
./Drivers/kyber/src/ntt.d \
./Drivers/kyber/src/poly.d \
./Drivers/kyber/src/polyvec.d \
./Drivers/kyber/src/randombytes.d \
./Drivers/kyber/src/reduce.d \
./Drivers/kyber/src/sha256.d \
./Drivers/kyber/src/sha512.d \
./Drivers/kyber/src/speed_print.d \
./Drivers/kyber/src/symmetric-aes.d \
./Drivers/kyber/src/symmetric-shake.d \
./Drivers/kyber/src/verify.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/kyber/src/%.o: ../Drivers/kyber/src/%.c Drivers/kyber/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I../Core/Inc -I../Drivers/libcsp/include -I../Drivers/kyber/include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-kyber-2f-src

clean-Drivers-2f-kyber-2f-src:
	-$(RM) ./Drivers/kyber/src/aes256ctr.d ./Drivers/kyber/src/aes256ctr.o ./Drivers/kyber/src/cbd.d ./Drivers/kyber/src/cbd.o ./Drivers/kyber/src/cpucycles.d ./Drivers/kyber/src/cpucycles.o ./Drivers/kyber/src/fips202.d ./Drivers/kyber/src/fips202.o ./Drivers/kyber/src/indcpa.d ./Drivers/kyber/src/indcpa.o ./Drivers/kyber/src/kem.d ./Drivers/kyber/src/kem.o ./Drivers/kyber/src/kex.d ./Drivers/kyber/src/kex.o ./Drivers/kyber/src/ntt.d ./Drivers/kyber/src/ntt.o ./Drivers/kyber/src/poly.d ./Drivers/kyber/src/poly.o ./Drivers/kyber/src/polyvec.d ./Drivers/kyber/src/polyvec.o ./Drivers/kyber/src/randombytes.d ./Drivers/kyber/src/randombytes.o ./Drivers/kyber/src/reduce.d ./Drivers/kyber/src/reduce.o ./Drivers/kyber/src/sha256.d ./Drivers/kyber/src/sha256.o ./Drivers/kyber/src/sha512.d ./Drivers/kyber/src/sha512.o ./Drivers/kyber/src/speed_print.d ./Drivers/kyber/src/speed_print.o ./Drivers/kyber/src/symmetric-aes.d ./Drivers/kyber/src/symmetric-aes.o ./Drivers/kyber/src/symmetric-shake.d ./Drivers/kyber/src/symmetric-shake.o ./Drivers/kyber/src/verify.d ./Drivers/kyber/src/verify.o

.PHONY: clean-Drivers-2f-kyber-2f-src

