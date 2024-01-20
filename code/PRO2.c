// LCD module connections
sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;
int x = 0;
void main()
{
  TRISB.F0=1;
  TRISB.F1=0;
  TRISB.F2=0;
  TRISB.F3=0;
  TRISB.F4=0;
  PORTB.F1=1;
  PORTB.F2=1;
  PORTB.F3=1;
  PORTB.F4=1;
  Lcd_Init();                        // Initialize LCD
  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
  Lcd_Out(1,1,"Wait...");        // Write text'Hello World' in first row
  delay_ms(2000);
  Lcd_Cmd(_LCD_CLEAR);
  while (1)
   {

   Lcd_Out(1,1,"HumadityS:");
   Lcd_Out(2,1,"Pump:");
   if(PORTB.F0==0)
    {
       Lcd_Out(1,11,"Wet");
       Lcd_Out(2,6,"OFF");
       PORTB.F1=1;
       PORTB.F3=1;
       PORTB.F2=0;
       PORTB.F4=0;
       x=1;
    }else
    {
       Lcd_Out(1,11,"Dry");
       Lcd_Out(2,6,"ON ");
       PORTB.F1=0;
       PORTB.F3=0;
       PORTB.F2=1;

       if(x==1){
          PORTB.F4=1;
          delay_ms(7000);
          PORTB.F4=0;
          x=0;
       }
    }
   
     delay_ms(500);
   
   
   }
}