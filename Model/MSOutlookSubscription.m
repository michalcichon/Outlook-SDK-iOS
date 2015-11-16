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



#import "MSOutlookModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOutlookSubscription
 *
 */
@implementation MSOutlookSubscription


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"Resource", @"resource", @"ChangeType", @"changeType", @"ClientState", @"clientState", @"Id", @"_id", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OutlookServices.Subscription";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_resource = (![dic objectForKey: @"Resource"] || [ [dic objectForKey: @"Resource"] isKindOfClass:[NSNull class]] )?_resource:[[dic objectForKey: @"Resource"] copy];
		_changeType = (![dic objectForKey: @"ChangeType"] || [ [dic objectForKey: @"ChangeType"] isKindOfClass:[NSNull class]] )?_changeType:[MSOutlookChangeTypeSerializer fromString:[dic objectForKey: @"ChangeType"]];
		_clientState = (![dic objectForKey: @"ClientState"] || [ [dic objectForKey: @"ClientState"] isKindOfClass:[NSNull class]] )?_clientState:[[dic objectForKey: @"ClientState"] copy];
		self._id = (![dic objectForKey: @"Id"] || [ [dic objectForKey: @"Id"] isKindOfClass:[NSNull class]] )?self._id:[[dic objectForKey: @"Id"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.resource copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Resource"];}
	{[dic setValue: [MSOutlookChangeTypeSerializer toString:self.changeType] forKey: @"ChangeType"];}
	{id curVal = [self.clientState copy];if (curVal!=nil) [dic setValue: curVal forKey: @"ClientState"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"Id"];}
    [dic setValue: @"#Microsoft.OutlookServices.Subscription" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.resource;
    if([self.updatedValues containsObject:@"Resource"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Resource"];
            }
    }
 if([self.updatedValues containsObject:@"ChangeType"])
            { [dic setValue: [MSOutlookChangeTypeSerializer toString:self.changeType] forKey: @"ChangeType"];
}	{id curVal = self.clientState;
    if([self.updatedValues containsObject:@"ClientState"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"ClientState"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"Id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"Id"];
            }
    }
    return dic;
}


/** Setter implementation for property resource
 *
 */
- (void) setResource: (NSString *) value {
    _resource = value;
    [self valueChangedFor:@"Resource"];
}
       
/** Setter implementation for property changeType
 *
 */
- (void) setChangeType: (MSOutlookChangeType) value {
    _changeType = value;
    [self valueChangedFor:@"ChangeType"];
}
       

- (void)setChangeTypeString:(NSString *)string {
        
    _changeType = [MSOutlookChangeTypeSerializer fromString:string];
    [self valueChangedFor:@"ChangeType"]; 
}

/** Setter implementation for property clientState
 *
 */
- (void) setClientState: (NSString *) value {
    _clientState = value;
    [self valueChangedFor:@"ClientState"];
}
       

@end
