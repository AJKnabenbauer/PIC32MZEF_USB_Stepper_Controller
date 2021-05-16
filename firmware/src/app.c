/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
 * Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE.
 *
 * IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
 * INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
 * WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
 * BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
 * FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
 * ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
 * THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"


// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

//uint8_t CACHE_ALIGN switchPromptUSB[] = "\r\nPUSH BUTTON PRESSED";
//
//uint8_t SUSB_ALIGNED cdcReadBuffer[APP_READ_BUFFER_SIZE];
//uint8_t SUSB_ALIGNED cdcWriteBuffer[APP_READ_BUFFER_SIZE];



USB_CONTEXT SUSB_DefaultContext( void )
{
    USB_CONTEXT temp = { 0 };

    temp.handle = USB_DEVICE_HANDLE_INVALID;
    temp.instance = USB_DEVICE_CDC_INDEX_0;
    temp.isConfigured = false;

    temp.lineCoding.dwDTERate = 115200;
    temp.lineCoding.bParityType = 0;
    temp.lineCoding.bParityType = 0;
    temp.lineCoding.bDataBits = 8;

    temp.transferStatus = USB_DEVICE_CDC_RESULT_OK;
    temp.transferHandle = USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID;
    temp.transferNumBytes = 0;
    temp.transferComplete = true;

    return temp;
}



USB_CONTEXT g_appData;

USB_DEVICE_CDC_EVENT_RESPONSE APP_USBDeviceCDCEventHandler(USB_DEVICE_CDC_INDEX index, USB_DEVICE_CDC_EVENT event, void * pData, uintptr_t userData );

void APP_USBDeviceEventHandler( USB_DEVICE_EVENT event, void * pData, uintptr_t context );

void APP_Initialize( void )
{
    g_appData = SUSB_DefaultContext( );
}

/*******************************************************
 * USB CDC Device Events - Application Event Handler
 *******************************************************/

USB_DEVICE_CDC_EVENT_RESPONSE APP_USBDeviceCDCEventHandler(
    USB_DEVICE_CDC_INDEX index, USB_DEVICE_CDC_EVENT event, void * pData, uintptr_t userData )
{
    USB_DEVICE_CDC_EVENT_DATA_WRITE_COMPLETE* writeCompleteEventData;
    USB_DEVICE_CDC_EVENT_DATA_READ_COMPLETE* readCompleteEventData;
    USB_CONTEXT* usbContext = (USB_CONTEXT *)userData;

    switch (event)
    {
        case USB_DEVICE_CDC_EVENT_SET_LINE_CODING:

            USB_DEVICE_ControlReceive( usbContext->handle, &usbContext->lineCoding, sizeof (USB_CDC_LINE_CODING) );
            break;

        case USB_DEVICE_CDC_EVENT_GET_LINE_CODING:

            USB_DEVICE_ControlSend( usbContext->handle, &usbContext->lineCoding, sizeof (USB_CDC_LINE_CODING) );
            break;

        case USB_DEVICE_CDC_EVENT_SET_CONTROL_LINE_STATE:

            usbContext->controlLineState.dtr = ((USB_CDC_CONTROL_LINE_STATE*)pData)->dtr;
            usbContext->controlLineState.carrier = ((USB_CDC_CONTROL_LINE_STATE*)pData)->carrier;
            USB_DEVICE_ControlStatus( usbContext->handle, USB_DEVICE_CONTROL_STATUS_OK );
            break;

        case USB_DEVICE_CDC_EVENT_SEND_BREAK:

            USB_DEVICE_ControlStatus( usbContext->handle, USB_DEVICE_CONTROL_STATUS_OK );
            break;

        case USB_DEVICE_CDC_EVENT_WRITE_COMPLETE:

            writeCompleteEventData = (USB_DEVICE_CDC_EVENT_DATA_WRITE_COMPLETE*)pData;
            usbContext->transferHandle = writeCompleteEventData->handle;
            usbContext->transferNumBytes = writeCompleteEventData->length;
            usbContext->transferStatus = writeCompleteEventData->status;
            usbContext->transferComplete = true;
            break;

        case USB_DEVICE_CDC_EVENT_READ_COMPLETE:

            readCompleteEventData = (USB_DEVICE_CDC_EVENT_DATA_READ_COMPLETE*)pData;
            usbContext->transferHandle = readCompleteEventData->handle;
            usbContext->transferNumBytes = readCompleteEventData->length;
            usbContext->transferStatus = readCompleteEventData->status;
            usbContext->transferComplete = true;
            break;

        case USB_DEVICE_CDC_EVENT_CONTROL_TRANSFER_DATA_RECEIVED:

            USB_DEVICE_ControlStatus( usbContext->handle, USB_DEVICE_CONTROL_STATUS_OK );
            break;

        case USB_DEVICE_CDC_EVENT_SERIAL_STATE_NOTIFICATION_COMPLETE:
        case USB_DEVICE_CDC_EVENT_CONTROL_TRANSFER_DATA_SENT:
        default:
            break;
    }

    return USB_DEVICE_CDC_EVENT_RESPONSE_NONE;
}

/***********************************************
 * Application USB Device Layer Event Handler.
 ***********************************************/

void APP_USBDeviceEventHandler( USB_DEVICE_EVENT event, void * pData, uintptr_t context )
{
    USB_CONTEXT* usbContext = (USB_CONTEXT *)context;

    switch (event)
    {
        case USB_DEVICE_EVENT_POWER_DETECTED:
            // VBUS was detected. We can attach the device 
            USB_DEVICE_Attach( usbContext->handle );
            break;

        case USB_DEVICE_EVENT_POWER_REMOVED:
            // VBUS is not available. We can detach the device
            USB_DEVICE_Detach( usbContext->handle );
            usbContext->isConfigured = false;
            break;

        case USB_DEVICE_EVENT_RESET:
            usbContext->isConfigured = false;
            break;

        case USB_DEVICE_EVENT_CONFIGURED:
            // Device layer initialized and we should register event handlers. Note we only support configuration 1 
            if( ((USB_DEVICE_EVENT_DATA_CONFIGURED*)pData)->configurationValue == 1 ) {
                USB_DEVICE_CDC_EventHandlerSet( USB_DEVICE_CDC_INDEX_0, APP_USBDeviceCDCEventHandler, context ); // CDC Device handler
                usbContext->isConfigured = true;
            }
            break;

        case USB_DEVICE_EVENT_DECONFIGURED:
        case USB_DEVICE_EVENT_SUSPENDED:
        case USB_DEVICE_EVENT_RESUMED:
        case USB_DEVICE_EVENT_ERROR:
        case USB_DEVICE_EVENT_SOF:
        default:
            break;
    }
}

/*****************************************************
 * This function is called in every step of the
 * application state machine.
 *****************************************************/

USB_CONTEXT* USB_GetContext( void )
{
    return &g_appData;
}


bool SUSB_OpenDevice( USB_CONTEXT* context )
{
    // Check if we already have a valid device context
    if( context->handle != USB_DEVICE_HANDLE_INVALID ) {
        return true;
    }

    // Otherwise attempt to open a device
    context->handle = USB_DEVICE_Open( USB_DEVICE_INDEX_0, DRV_IO_INTENT_READWRITE );

    // If it opened okay, register a callback with device layer to get event notifications
    if( context->handle != USB_DEVICE_HANDLE_INVALID ) {
        USB_DEVICE_EventHandlerSet( context->handle, APP_USBDeviceEventHandler, (uintptr_t)context );
        return true;
    }

    return false;
}


bool SUSB_Startup( USB_CONTEXT* context )
{
    return (SUSB_OpenDevice( context ) == false || context->isConfigured == false) ? true : false;
}

USB_DEVICE_CDC_RESULT SUSB_ScheduleRead( USB_CONTEXT* context, USB_DEVICE_CDC_TRANSFER_HANDLE* handle, USB_DATA_PTR data, size_t size )
{
    USB_DEVICE_CDC_RESULT result =
        USB_DEVICE_CDC_Read( context->instance, handle, data, size );

    if( result == USB_DEVICE_CDC_RESULT_OK ) {
        context->transferComplete = false;
    }

    return result;
}

USB_DEVICE_CDC_RESULT SUSB_ScheduleWrite( USB_CONTEXT* context, USB_DEVICE_CDC_TRANSFER_HANDLE* handle, USB_DATA_PTR data, size_t size )
{
    USB_DEVICE_CDC_RESULT result =
        USB_DEVICE_CDC_Write( context->instance, handle, data, size, USB_DEVICE_CDC_TRANSFER_FLAGS_DATA_COMPLETE );

    if( result == USB_DEVICE_CDC_RESULT_OK ) {
        context->transferComplete = false;
    }

    return result;
}

void APP_Tasks( void )
{

}

/*******************************************************************************
 End of File
 */

