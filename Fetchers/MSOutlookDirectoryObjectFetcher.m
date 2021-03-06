/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#import "MSOutlookFetchers.h"
#import "core/core.h"

@implementation MSOutlookDirectoryObjectFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOutlookDirectoryObject class]]) {

		_operations = [[MSOutlookDirectoryObjectOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSOutlookDirectoryObject *DirectoryObject, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSOutlookDirectoryObjectFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOutlookDirectoryObjectFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSOutlookDirectoryObjectFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOutlookDirectoryObjectFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSOutlookDirectoryObject *DirectoryObject, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSOutlookUserFetcher *)asUser {

	return [[MSOutlookUserFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookUser class]];
}

- (MSOutlookGroupFetcher *)asGroup {

	return [[MSOutlookGroupFetcher alloc] initWithUrl:@"" parent:self asClass:[MSOutlookGroup class]];
}

@end
