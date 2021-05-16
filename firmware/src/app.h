/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app.h

  Summary:
    This header file provides prototypes and definitions for the application.

  Description:
    This header file provides function prototypes and data type definitions for
    the application.  Some of these are required by the system (such as the
    "APP_Initialize" and "APP_Tasks" prototypes) and some of them are only used
    internally by the application (such as the "APP_STATES" definition).  Both
    are defined here for convenience.
 *******************************************************************************/

//DOM-IGNORE-BEGIN
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
//DOM-IGNORE-END

#ifndef _APP_H
#define _APP_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "configuration.h"
#include "definitions.h"


#ifdef __cplusplus  // Provide C++ Compatibility

extern "C" {

#endif

    
    
    
#define APP_READ_BUFFER_SIZE                                512

// Data provided to transmit and receive buffers must be in coherent memory and aligned at a 16 byte boundary. 
#define SUSB_ALIGNED __attribute__((coherent, aligned(16)))

// A pointer to data that is in coherent memory and aligned at a 16 byte boundary 
typedef SUSB_ALIGNED uint8_t* USB_DATA_PTR;


typedef int SUSB_ENUM;


#define SUSB_STATUS_HANDLE_INVALID -5 
#define SUSB_STATUS_TERMINATED_BY_HOST -4 
#define SUSB_STATUS_ABORTED_ENDPOINT_HALT -3 
#define SUSB_STATUS_ABORTED -2 
#define SUSB_STATUS_ERROR -1
#define SUSB_STATUS_COMPLETED 0 
#define SUSB_STATUS_COMPLETED_SHORT 1 
#define SUSB_STATUS_SETUP 2 
#define SUSB_STATUS_PENDING 3 
#define SUSB_STATUS_IN_PROGRESS 4

// Shorter equivalent to USB_DEVICE_HANDLE_INVALID, USB_DEVICE_TRANSFER_HANDLE_INVALID, and USB_DEVICE_CDC_TRANSFER_HANDLE_INVALID 
#define SUSB_INVALID_HANDLE ((uintptr_t)(-1))

/**
 * Macro to help check if a USB handle is valid or not
 * 
 * @param handle that should be checked
 * @return true if handle is valid, else false
 */
#define SUSB_HandleIsValid(handle) ((bool)(handle != SUSB_INVALID_HANDLE))

/**
 * 
 * @param handle the USB CDC transfer handle that whose status should be returned
 * @return one of the following status enums
 * <ul>
 *      <li>SUSB_STATUS_HANDLE_INVALID
 *      <li>SUSB_STATUS_TERMINATED_BY_HOST
 *      <li>SUSB_STATUS_ABORTED_ENDPOINT_HALT
 *      <li>SUSB_STATUS_ABORTED
 *      <li>SUSB_STATUS_ERROR
 *      <li>SUSB_STATUS_COMPLETED
 *      <li>SUSB_STATUS_COMPLETED_SHORT
 *      <li>SUSB_STATUS_SETUP
 *      <li>SUSB_STATUS_PENDING
 *      <li>SUSB_STATUS_IN_PROGRESS
 * </ul>
 * @see USB_DEVICE_IRP_STATUS
 * @see USB_DEVICE_IRP
 */
static inline SUSB_ENUM SUSB_TransferGetStatus( USB_DEVICE_CDC_TRANSFER_HANDLE handle )
{
    return (handle != SUSB_INVALID_HANDLE) ? 
        ((USB_DEVICE_IRP*)handle)->status : SUSB_STATUS_HANDLE_INVALID;
}

/**
 * Checks if a transfer handle is complete 
 * 
 * @param handle transfer handle to check
 * @return true if transfer is complete else false
 */
static inline bool SUSB_TransferIsComplete( USB_DEVICE_CDC_TRANSFER_HANDLE handle )
{
    SUSB_ENUM status = SUSB_TransferGetStatus( handle );
    return (status == SUSB_STATUS_COMPLETED || 
        status == SUSB_STATUS_COMPLETED_SHORT) ? true : false;
}

typedef struct {
    /* Device layer handle returned by device layer open function */
    USB_DEVICE_HANDLE handle;
    USB_DEVICE_CDC_INDEX instance;
    USB_CDC_LINE_CODING lineCoding;
    USB_CDC_CONTROL_LINE_STATE controlLineState;

    bool isConfigured;

    bool transferComplete;
    USB_DEVICE_CDC_TRANSFER_HANDLE transferHandle;
    USB_DEVICE_CDC_RESULT transferStatus;
    uint32_t transferNumBytes;

} USB_CONTEXT;





USB_CONTEXT SUSB_DefaultContext( void );




USB_CONTEXT* USB_GetContext( void );

void APP_Initialize( void );

/**
 * Opens USB device layer and if successful registers the corresponding even handler
 * @param Pointer to the target USB context
 * @return true if successful, or if the USB context already has a valid device handle, 
 * otherwise false
 */
bool SUSB_OpenDevice( USB_CONTEXT* context );

/**
 * This function can be used to loop while checking for a valid configuration.
 * 
 * Example loop:
 *     
 * while ( SUSB_Startup(&usbContext) ) {
 *          SYS_Tasks( );
 *      }
 * 
 * @param Pointer to the target USB context that you are starting
 * @return true if still in startup phase, false if startup is complete
 */


bool SUSB_Startup( USB_CONTEXT* context );


USB_DEVICE_CDC_RESULT SUSB_ScheduleRead(
    USB_CONTEXT* context,
    USB_DEVICE_CDC_TRANSFER_HANDLE* handle,
    USB_DATA_PTR data,
    size_t size
    );

USB_DEVICE_CDC_RESULT SUSB_ScheduleWrite(
    USB_CONTEXT* context,
    USB_DEVICE_CDC_TRANSFER_HANDLE* handle,
    USB_DATA_PTR data,
    size_t size
    );


void APP_Tasks( void );

#ifdef	__cplusplus
}
#endif


#endif /* _APP_H */
/*******************************************************************************
 End of File
 */

