//
//  ViewController.h
//  vCardGen
//
//  Created by A. Vatsaev on 07/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BitLyApi.h"


@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *linkOutput;
@property (strong, nonatomic) IBOutlet UITextField *fnameInput;

@property (strong, nonatomic) IBOutlet UITextField *lnameInput;

@property (strong, nonatomic) IBOutlet UITextField *urlInput;

@property (strong, nonatomic) BitLyApi *bitly;

@property (strong, nonatomic) NSString *qrcodeData;

@end
