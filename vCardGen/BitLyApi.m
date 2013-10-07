//
//  BitLyApi.m
//  vCardGen
//
//  Created by A. Vatsaev on 07/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "BitLyApi.h"






@implementation BitLyApi


-(void)shorten:(NSString*)longURL{
    
    NSString *endPoint = [NSString stringWithFormat:@"https://api-ssl.bitly.com/shorten?access_token=%@&longUrl=%@",self.accessToken,longURL];
    NSURL *url = [NSURL URLWithString:endPoint];
    NSURLRequest * urlRequest = [NSURLRequest requestWithURL:url];
    NSURLResponse * response = nil;
    NSError * error = nil;
    NSData * data = [NSURLConnection sendSynchronousRequest:urlRequest returningResponse:&response error:&error];
    
    NSError* JSONerror;
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:data
                          
                          options:kNilOptions
                          error:&JSONerror];
    self.reponse = json;
    self.shortUrl =json[@"results"][longURL][@"shortUrl"];
    NSLog(@"%@", json[@"results"][longURL][@"shortUrl"]);
    
}






@end
