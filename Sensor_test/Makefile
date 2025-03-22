SHELL=cmd
CC=c51
COMPORT = $(shell type COMPORT.inc)
OBJS=sensor_test.obj

compile: clean sensor_test.hex LoadFlash 

sensor_test.hex: $(OBJS)
	$(CC) $(OBJS)
	@echo Done!
	
sensor_test.obj: sensor_test.c
	$(CC) -c sensor_test.c

clean:
	@del $(OBJS) *.asm *.lkr *.lst *.map *.hex *.map 2> nul

LoadFlash:
	@Taskkill /IM putty.exe /F 2>NUL | wait 500
	EFM8_prog.exe -ft230 -r sensor_test.hex
	cmd /c start putty -serial $(COMPORT) -sercfg 115200,8,n,1,N

putty:
	@Taskkill /IM putty.exe /F 2>NUL | wait 500
	cmd /c start putty -serial $(COMPORT) -sercfg 115200,8,n,1,N
	
explorer:
	cmd /c start explorer .
		