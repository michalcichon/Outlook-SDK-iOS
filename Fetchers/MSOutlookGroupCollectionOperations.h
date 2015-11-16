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


#ifndef MSOUTLOOKGROUPCOLLECTIONOPERATIONS_H
#define MSOUTLOOKGROUPCOLLECTIONOPERATIONS_H


#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/core.h"
#import "MSOutlookDirectoryObjectCollectionOperations.h"


/** MSOutlookGroupCollectionOperations
 *
 */
@interface MSOutlookGroupCollectionOperations : MSOutlookDirectoryObjectCollectionOperations

- (void)subscribeByMailWithCallback:(void (^)(int, MSOrcError*))callback ;
- (void)subscribeByMailRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)unsubscribeByMailWithCallback:(void (^)(int, MSOrcError*))callback ;
- (void)unsubscribeByMailRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)addFavoriteWithCallback:(void (^)(int, MSOrcError*))callback ;
- (void)addFavoriteRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)removeFavoriteWithCallback:(void (^)(int, MSOrcError*))callback ;
- (void)removeFavoriteRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;
- (void)resetUnseenCountWithCallback:(void (^)(int, MSOrcError*))callback ;
- (void)resetUnseenCountRawWithCallback:(void (^)(NSString *, MSOrcError*))callback ;

@end

#endif
