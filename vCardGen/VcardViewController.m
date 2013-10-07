//
//  VcardViewController.m
//  vCardGen
//
//  Created by A. Vatsaev on 07/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "VcardViewController.h"
#include "qrencode.h"
#import "UIImage+QRCodeGenerator.h"

@interface VcardViewController ()

@end

@implementation VcardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)close:(id)sender {

    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
    self.lnameView.text = self.lname;
    self.fnameView.text = self.fname;
    self.urlView.text = self.url;
    
    self.qrcodeData = [NSString stringWithFormat:@"BEGIN:VCARD\nVERSION:2.1\nN:%@;%@;;;\nFN:%@ %@\nURL;WORK:%@\nEND:VCARD", self.fname, self.lname, self.lname, self.fname, self.url];
    
    self.qrCodeView.image = [UIImage QRCodeGenerator:self.qrcodeData andLightColour:[UIColor whiteColor] andDarkColour:[UIColor blackColor] andQuietZone:1 andSize:200];
    
    NSLog(@"%@",self.qrcodeData);
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
