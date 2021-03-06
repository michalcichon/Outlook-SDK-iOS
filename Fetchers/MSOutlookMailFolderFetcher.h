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



#ifndef MSOUTLOOKMAILFOLDERFETCHER_H
#define MSOUTLOOKMAILFOLDERFETCHER_H

#import "MSOutlookModels.h"
#import "api/api.h"
#import "core/core.h"
#import "core/MSOrcEntityFetcher.h"

@class MSOutlookMessageCollectionFetcher;
@class MSOutlookMessageCollectionFetcher;
@class MSOutlookMessageFetcher;
@class MSOutlookMailFolderFetcher;
@class MSOutlookMailFolderOperations;


/** MSOutlookMailFolderFetcher
 *
 */
@interface MSOutlookMailFolderFetcher : MSOrcEntityFetcher

@property (copy, nonatomic, readonly) MSOutlookMailFolderOperations *operations;

- (instancetype)initWithUrl:(NSString*)urlComponent parent:(id<MSOrcExecutable>)parent;
- (void)readWithCallback:(void (^)(MSOutlookMailFolder *, MSOrcError *))callback;
- (void)update:(MSOutlookMailFolder *)MailFolder callback:(void (^)(MSOutlookMailFolder *, MSOrcError*))callback ;
- (void)delete:(void(^)(int status, MSOrcError *))callback;
- (MSOutlookMailFolderFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value;
- (MSOutlookMailFolderFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value;
- (MSOutlookMailFolderFetcher *)select:(NSString *)params;
- (MSOutlookMailFolderFetcher *)expand:(NSString *)value;
@property (strong, nonatomic, readonly, getter=messages) MSOutlookMessageCollectionFetcher *messages;

- (MSOutlookMessageFetcher *)messagesById:(id)identifier;

@property (strong, nonatomic, readonly, getter=childFolders) MSOutlookMailFolderCollectionFetcher *childFolders;

- (MSOutlookMailFolderFetcher *)childFoldersById:(id)identifier;


@end

#endif
