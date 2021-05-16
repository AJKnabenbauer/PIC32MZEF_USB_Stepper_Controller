/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

#include <limits.h>                     // MIN and MAX type values ie. 

#include <string.h>
#include <stdarg.h>                     // For va lists
#include <stdio.h>

#include <stdbool.h>


#define WIN_RETURN "\r\n"

// Remap OMCP8 to Red portion of RGB LED
#define LED_RGB_RED_INIT() OCMP8_Initialize()
#define LED_RGB_RED_ENABLE() OCMP8_Enable()
#define LED_RGB_RED_DISABLE() OCMP8_Disable()
#define LED_RGB_RED_VAL_GET() OCMP8_CompareSecondaryValueGet()
#define LED_RGB_RED_VAL_SET(val) OCMP8_CompareSecondaryValueSet(val)

// Remap OMCP5 to Green portion of RGB LED
#define LED_RGB_GREEN_INIT() OCMP5_Initialize()
#define LED_RGB_GREEN_ENABLE() OCMP5_Enable()
#define LED_RGB_GREEN_DISABLE() OCMP5_Disable()
#define LED_RGB_GREEN_VAL_GET() OCMP5_CompareSecondaryValueGet()
#define LED_RGB_GREEN_VAL_SET(val) OCMP5_CompareSecondaryValueSet(val)

// Remap OMCP3 to Blue portion of RGB LED
#define LED_RGB_BLUE_INIT() OCMP3_Initialize()
#define LED_RGB_BLUE_ENABLE() OCMP3_Enable()
#define LED_RGB_BLUE_DISABLE() OCMP3_Disable()
#define LED_RGB_BLUE_VAL_GET() OCMP3_CompareSecondaryValueGet()
#define LED_RGB_BLUE_VAL_SET(val) OCMP3_CompareSecondaryValueSet(val)

// Red LED is active low
#define LED_RED_On() LED_RED_Clear()
#define LED_RED_Off() LED_RED_Set()

// Yellow LED is active low
#define LED_YELLOW_On() LED_YELLOW_Clear()
#define LED_YELLOW_Off() LED_YELLOW_Set()

// Green LED is active low
#define LED_GREEN_On() LED_GREEN_Clear()
#define LED_GREEN_Off() LED_GREEN_Set()

// UART6 
uint8_t rxByte = 0;
UART_ERROR UART6_Error = UART_ERROR_NONE;

void UART6_RxCallback( uintptr_t context );
void UART6_TxCallback( uintptr_t context );

bool UART6_TxString( const char * format, ... );

// Delay functions
void Delay_US( uint32_t microSeconds );
void Delay_MS( uint32_t milliSeconds );

uint8_t SUSB_ALIGNED readBuffer[APP_READ_BUFFER_SIZE] = { 0 };
uint8_t SUSB_ALIGNED writeBuffer[APP_READ_BUFFER_SIZE] = { 0 };





// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main( void )
{
    /* Initialize all modules */
    SYS_Initialize( NULL );

    TMR4_PeriodSet( 0xFFFFFFFF );
    TMR4_Start( );

    TMR2_PeriodSet( 10000 );
    TMR2_Start( );

    LED_RGB_RED_VAL_SET( 9500 );
    LED_RGB_RED_ENABLE( );

    LED_RGB_GREEN_VAL_SET( 9500 );
    LED_RGB_GREEN_ENABLE( );

    LED_RGB_BLUE_VAL_SET( 9500 );
    LED_RGB_BLUE_ENABLE( );

    LED_GREEN_Off( );
    LED_RED_Off( );
    LED_YELLOW_Off( );

    bool SW1_StateOld = SW1_Get( );
    bool SW2_StateOld = SW2_Get( );
    bool SW3_StateOld = SW3_Get( );
    bool SW4_StateOld = GPIO_RC15_Get( );

    UART6_ReadCallbackRegister( UART6_RxCallback, (uintptr_t)NULL );
    UART6_WriteCallbackRegister( UART6_TxCallback, (uintptr_t)NULL );

    UART6_Read( &rxByte, 1 );

    USB_CONTEXT usb1 = SUSB_DefaultContext();

    // Keep doing to polled system tasks until USB device is open
    //    while (SUSB_OpenDevice(usb1) == false || usb1->isConfigured == false) {
    //        SYS_Tasks( );
    //    }

    while (SUSB_Startup( &usb1 )) {
        SYS_Tasks( );
    }

    // Keep doing polled system tasks until USB is configured
    //    while (usb1->isConfigured == false){
    //         SYS_Tasks( );
    //    }

//    usb1->state = APP_STATE_SCHEDULE_READ;

    LED_RED_On( );

    USB_DEVICE_CDC_TRANSFER_HANDLE handle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;

    USB_DEVICE_CDC_RESULT result;

        bool reading = false;
        bool writing = false;
    //bool fail = false;

    result = SUSB_ScheduleRead( &usb1, &handle, readBuffer, APP_READ_BUFFER_SIZE );

    if( result == USB_DEVICE_CDC_RESULT_OK) {
        LED_YELLOW_Off( );
    }
    else {
        LED_YELLOW_On( );
    }

    //reading = (result == USB_DEVICE_CDC_RESULT_OK) ? true : false;

    while (true) {
//        switch (result)
//        {
//            case USB_DEVICE_CDC_RESULT_OK: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_OK %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR_TRANSFER_SIZE_INVALID: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR_TRANSFER_SIZE_INVALID %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR_TRANSFER_QUEUE_FULL: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR_TRANSFER_QUEUE_FULL %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR_INSTANCE_INVALID: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR_INSTANCE_INVALID %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR_INSTANCE_NOT_CONFIGURED: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR_INSTANCE_NOT_CONFIGURED %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR_PARAMETER_INVALID: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR_PARAMETER_INVALID %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR_ENDPOINT_HALTED: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR_ENDPOINT_HALTED %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR_TERMINATED_BY_HOST: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR_TERMINATED_BY_HOST %u\r\n", result );
//                break;
//            case USB_DEVICE_CDC_RESULT_ERROR: UART6_TxString( "Result: USB_DEVICE_CDC_RESULT_ERROR %u\r\n", result );
//                break;
//            default: UART6_TxString( "Result: UNKNOWN %u\r\n", result );
//                break;
//        }
                if( usb1.transferComplete || SUSB_TransferIsComplete( handle ) ) {
                    //int i = usb1->transferNumBytes;
        
                    if( reading && !writing) { 
                        memcpy( writeBuffer, readBuffer, usb1.transferNumBytes );
                        result = SUSB_ScheduleWrite( &usb1, &handle, writeBuffer, usb1.transferNumBytes );
                        writing = (result == USB_DEVICE_CDC_RESULT_OK) ? true : false;
                        reading = false;
                    }
        
                    else if ((!reading && writing) || (!reading && !writing)){
                        result = SUSB_ScheduleRead( &usb1, &handle, readBuffer, sizeof (readBuffer) );
                        reading = (result == USB_DEVICE_CDC_RESULT_OK) ? true : false;
                        writing = false;
                    }
                    
                }


        if( SW1_Get( ) != SW1_StateOld ||
            SW2_Get( ) != SW2_StateOld ||
            SW3_Get( ) != SW3_StateOld ||
            GPIO_RC15_Get( ) != SW4_StateOld
            ) {
            SW1_StateOld = SW1_Get( );
            SW2_StateOld = SW2_Get( );
            SW3_StateOld = SW3_Get( );
            SW4_StateOld = GPIO_RC15_Get( );

            int irp_status = -5;

            if( handle != USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID ) {
                USB_DEVICE_IRP* irp = (USB_DEVICE_IRP*)handle;
                irp_status = irp->status;

            }

            UART6_TxString(
  //              "State: %u\r\n"
                "Configured: %u\r\n"
                "tranferComplete: %u\r\n"
                "transferHandle: %p\r\n"
                "transferNumBytes: %u\r\n"
                "tranferStatus: %u\r\n"
                "irpStatus: %d\r\n\r\n",
//                usb1->state,
                usb1.isConfigured,
                usb1.transferComplete,
                usb1.transferHandle,
                usb1.transferNumBytes,
                usb1.transferStatus,
                irp_status
                );



        }


        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks( );
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE);
}

void UART6_RxCallback( uintptr_t context )
{
    UART6_Error = UART6_ErrorGet( );

    if( UART6_Error == UART_ERROR_NONE ) {
        LED_RED_On( );
    }

    else {
        UART6_Read( &rxByte, 1 );
    }
}

void UART6_TxCallback( uintptr_t context )
{
    UART6_Error = UART6_ErrorGet( );

    if( UART6_Error != UART_ERROR_NONE ) {
        LED_RED_On( );
    }

    LED_YELLOW_Off( );
}

bool UART6_TxString( const char * format, ... )
{
    static char buffer[512] = { 0 };
    int numChars = 0;
    int sizeData = 0;

    if( UART6_WriteIsBusy( ) || UART6_Error != UART_ERROR_NONE ) {
        return false;
    }

    va_list args;
    va_start( args, format );
    numChars = vsnprintf( buffer, sizeof (buffer), format, args );
    va_end( args );

    if( numChars <= 0 ) {
        return false;
    }

    // check if string size is within our buffer or not and change 
    // the count of bytes to be sent
    sizeData = numChars < sizeof (buffer) ? numChars : sizeof (buffer) - 1;

    UART6_Write( buffer, sizeData );
    LED_YELLOW_On( );

    return true;
}

void Delay_US( uint32_t microSeconds )
{
    TMR4 = 0x0; // clear count to 0

    uint32_t count = microSeconds * (TMR4_FrequencyGet( ) / 1000000);

    while (TMR4 < count) {

    }
}

void Delay_MS( uint32_t milliSeconds )
{
    TMR4 = 0x0; // clear count to 0

    uint32_t count = milliSeconds * (TMR4_FrequencyGet( ) / 1000);

    while (TMR4 < count) {

    }
}


/*******************************************************************************
 End of File
 */

