SHELL=cmd
CC=c51
COMPORT = $(shell type COMPORT.inc)

# List of object files
OBJS=sensor_test.obj bmm150.obj 

# Compile everything
compile: clean sensor_test.hex LoadFlash

# Link all object files to create the final HEX file
sensor_test.hex: $(OBJS)
	$(CC) $(OBJS)
	@echo Done!
	
# Compile individual source files
sensor_test.obj: sensor_test.c
	$(CC) -c sensor_test.c

bmm150.obj: bmm150.c
	$(CC) -c bmm150.c

# Clean up generated files
clean:
	@del $(OBJS) *.asm *.lkr *.lst *.map *.hex *.map 2> nul

# Load program to the EFM8 microcontroller
LoadFlash:
	@Taskkill /IM putty.exe /F 2>NUL | wait 500
	EFM8_prog.exe -ft230 -r sensor_test.hex
	cmd /c start putty -serial $(COMPORT) -sercfg 115200,8,n,1,N

# Open Putty for serial communication
putty:
	@Taskkill /IM putty.exe /F 2>NUL | wait 500
	cmd /c start putty -serial $(COMPORT) -sercfg 115200,8,n,1,N
	
# Open current directory in Windows Explorer
explorer:
	cmd /c start explorer .
