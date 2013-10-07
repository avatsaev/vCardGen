//
//  VcardViewController.h
//  vCardGen
//
//  Created by A. Vatsaev on 07/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "ViewController.h"

@interface VcardViewController : ViewController

@property (strong, nonatomic) NSString *fname;
@property (strong, nonatomic) NSString *lname;
@property (strong, nonatomic) NSString *url;
@property (strong, nonatomic) UIImage *qrCode;
@property (strong, nonatomic) NSString *qrcodeData;

@property (strong, nonatomic) IBOutlet UIImageView *qrCodeView;
@property (strong, nonatomic) IBOutlet UILabel *fnameView;
@property (strong, nonatomic) IBOutlet UILabel *lnameView;
@property (strong, nonatomic) IBOutlet UILabel *urlView;

@end
