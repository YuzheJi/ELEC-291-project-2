#include <EFM8LB1.h>
#include <stdio.h>
#include "freq.h"

int get_freq(){
    int freq1001 = 0;
	int freq1002 = 0;
    float period;
	unsigned char overflow_count=0;
	int i;

	for(i=0; i<5; i++){
		TL0=0; 
		TH0=0;
		TF0=0;
			
		while(metal_detect!=0); // Wait for the signal to be zero
		while(metal_detect!=1); // Wait for the signal to be one
		TR0=1; // Start the timer
		while(metal_detect!=0) // Wait for the signal to be zero
		{
			if(TF0==1) // Did the 16-bit timer overflow?
			{
				TF0=0;
				overflow_count++;
			}
		}
		while(metal_detect!=1) // Wait for the signal to be one
		{
			if(TF0==1) // Did the 16-bit timer overflow?
			{
				TF0=0;
				overflow_count++;
			}
		}
		TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period!
		period=(overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK);
		overflow_count = 0;
		freq1001 += 1.0/(period*10);
	}
	freq1001 /= 5.0;

	for(i=0; i<5; i++){
		TL0=0; 
		TH0=0;
		TF0=0;
			
		while(metal_detect!=0); // Wait for the signal to be zero
		while(metal_detect!=1); // Wait for the signal to be one
		TR0=1; // Start the timer
		while(metal_detect!=0) // Wait for the signal to be zero
		{
			if(TF0==1) // Did the 16-bit timer overflow?
			{
				TF0=0;
				overflow_count++;
			}
		}
		while(metal_detect!=1) // Wait for the signal to be one
		{
			if(TF0==1) // Did the 16-bit timer overflow?
			{
				TF0=0;
				overflow_count++;
			}
		}
		TR0=0; // Stop timer 0, the 24-bit number [overflow_count-TH0-TL0] has the period!
		period=(overflow_count*65536.0+TH0*256.0+TL0)*(12.0/SYSCLK);
		overflow_count = 0;
		freq1002 += 1.0/(period*10);
	}
	freq1002 /= 5.0;


    return 0.5*(freq1001+freq1002);
}