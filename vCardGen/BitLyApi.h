//
//  BitLyApi.h
//  vCardGen
//
//  Created by A. Vatsaev on 07/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface BitLyApi : NSObject


@property (strong, nonatomic) NSString *accessToken;
@property (strong, nonatomic) NSDictionary *reponse;
@property (strong, nonatomic) NSString *shortUrl;
-(void)shorten:(NSString*)longURL;


@end
