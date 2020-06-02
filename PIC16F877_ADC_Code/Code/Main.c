/*  Name     : main.c
 *  Purpose  : Main file for using ADC of PIC16F877.
 *  Author   : M.Saeed Yasin
 *  Date     : 17-12-12
 *  Website  : saeedsolutions.blogspot.com
 *  Revision : None
 */
#include "Includes.h"

double map(double value, float x_min, float x_max, float y_min, float y_max);
// Configuration word for PIC16F877
__CONFIG( FOSC_HS & WDTE_OFF & PWRTE_ON & CP_OFF & BOREN_ON 
		& LVP_OFF & CPD_OFF & WRT_ON & DEBUG_OFF);

// Main Function
void main(void)
{ 
	unsigned int ADC_value = 0;
	unsigned int ADC_value1 = 0;
	unsigned int ADC_value2 = 0;
	unsigned int ADC_value3 = 0;
	unsigned int ADC_value4 = 0;
	unsigned int ADC_value5 = 0;
	unsigned int ADC_value6 = 0;
	unsigned int ADC_value7 = 0;
	unsigned int ADC_value8 = 0;
	unsigned int digit1, digit2, digit3, digit4;
	InitADC();			// Initialize ADC
	InitLCD();			// Initialize LCD

	while(1)
	{
	  
        ADC_value1 = GetADCValue(AN1);		// Read ADC value from RE2(AN7) pin
        ADC_value1=map(ADC_value1, 0, 1023, 0, 125);
	    ADC_value2 = GetADCValue(AN2);		// Read ADC value from RE2(AN7) pin
        ADC_value2=map(ADC_value2, 0, 1023, 0, 125);
    	ADC_value3 = GetADCValue(AN3);		// Read ADC value from RE2(AN7) pin
        ADC_value3=map(ADC_value3, 0, 1023, 0, 125);
    	ADC_value4 = GetADCValue(AN4);		// Read ADC value from RE2(AN7) pin
        ADC_value4=map(ADC_value4, 0, 1023, 0, 125);
     	ADC_value5 = GetADCValue(AN5);		// Read ADC value from RE2(AN7) pin
        ADC_value5=map(ADC_value5, 0, 1023, 0, 125);
     	ADC_value6 = GetADCValue(AN6);		// Read ADC value from RE2(AN7) pin
        ADC_value6=map(ADC_value6, 0, 1023, 0, 125);
	    ADC_value7 = GetADCValue(AN7);		// Read ADC value from RE2(AN7) pin
        ADC_value7=map(ADC_value7, 0, 1023, 0, 125);
    	ADC_value8 = GetADCValue(AN0);		// Read ADC value from RE2(AN7) pin
        ADC_value8=map(ADC_value8, 0, 1023, 0, 125);
        ADC_value=ADC_value1+ADC_value2+ADC_value3+ADC_value4+ADC_value5+ADC_value6+ADC_value7+ADC_value8;		
		digit1 = (unsigned int)(ADC_value/1000);									 // Calculate digit1 of ADC_value
		digit2 = (unsigned int)((ADC_value - digit1*1000)/100);						 // Calculate digit2 of ADC_value
		digit3 = (unsigned int)((ADC_value - (digit1*1000+digit2*100))/10);			 // Calculate digit3 of ADC_value
		digit4 = (unsigned int)(ADC_value - (digit1*1000+digit2*100+digit3*10));	 // Calculate digit4 of ADC_value
        ClearLCDScreen();	
		WriteDataToLCD(digit1+0x30);		// Display digit1 of ADC_value on LCD
		WriteDataToLCD(digit2+0x30);		// Display digit2 of ADC_value on LCD
		WriteDataToLCD(digit3+0x30);		// Display digit3 of ADC_value on LCD
		WriteDataToLCD(digit4+0x30);		// Display digit4 of ADC_value on LCD
		__delay_ms(500);

 

  

	}
}
double map(double value, float x_min, float x_max, float y_min, float y_max)   
{                   
    return (y_min + (((y_max - y_min)/(x_max - x_min)) * (value - x_min)));
} 