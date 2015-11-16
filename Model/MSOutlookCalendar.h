/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#ifndef MSOUTLOOKCALENDAR_H
#define MSOUTLOOKCALENDAR_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSOutlookEvent;
#import "MSOutlookCalendarColor.h"
#import "MSOutlookEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSOutlookCalendar
 *
 */
@interface MSOutlookCalendar : MSOutlookEntity <MSOrcInteroperableWithDictionary>

/** Property name
 *
 */
@property (nonatomic,  copy, setter=setName:, getter=name) NSString * name;

/** Property color
 *
 */
@property (nonatomic,  setter=setColor:, getter=color) MSOutlookCalendarColor color;

- (void)setColorString:(NSString *)string;

/** Property changeKey
 *
 */
@property (nonatomic,  copy, setter=setChangeKey:, getter=changeKey) NSString * changeKey;

/** Property events
 *
 */
@property (nonatomic,  copy, setter=setEvents:, getter=events) NSMutableArray * events;

/** Property calendarView
 *
 */
@property (nonatomic,  copy, setter=setCalendarView:, getter=calendarView) NSMutableArray * calendarView;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
