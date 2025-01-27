################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/main.c \
../src/utils.c 

OBJS += \
./src/main.o \
./src/utils.o 

C_DEPS += \
./src/main.d \
./src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU RISC-V Cross C Compiler'
	riscv-none-embed-gcc -march=rv32ic -mabi=ilp32 -msmall-data-limit=8 -mno-save-restore -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -DLSCC_STDIO_UART_APB -I"C:\ECAD\FPGA_Designs\lattice_propel_workspace\riscv_mc_helloworld/src" -I"C:\ECAD\FPGA_Designs\lattice_propel_workspace\riscv_mc_helloworld/src/bsp" -I"C:\ECAD\FPGA_Designs\lattice_propel_workspace\riscv_mc_helloworld/src/bsp/driver" -I"C:\ECAD\FPGA_Designs\lattice_propel_workspace\riscv_mc_helloworld/src/bsp/driver/gpio" -I"C:\ECAD\FPGA_Designs\lattice_propel_workspace\riscv_mc_helloworld/src/bsp/driver/riscv_mc" -I"C:\ECAD\FPGA_Designs\lattice_propel_workspace\riscv_mc_helloworld/src/bsp/driver/uart" -std=gnu11 --specs=picolibc.specs -DPICOLIBC_INTEGER_PRINTF_SCANF -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


