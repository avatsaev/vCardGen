//
//  ViewController.m
//  vCardGen
//
//  Created by A. Vatsaev on 07/10/13.
//  Copyright (c) 2013 Vatsaev Aslan. All rights reserved.
//

#import "ViewController.h"
#import "BitLyApi.h"
#import "VcardViewController.h"


@interface ViewController ()
    
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.bitly = [BitLyApi alloc].init;
    self.bitly.accessToken = @"92891391962f0b0faf67f95564ac7d39ad68c5bb";//<----------------insert your key
    self.urlInput.returnKeyType = UIReturnKeyDone;
    
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    VcardViewController* destination = (VcardViewController*)segue.destinationViewController;
    destination.url = self.urlInput.text;
    destination.lname = self.lnameInput.text;
    destination.fname = self.fnameInput.text;
    
}


- (IBAction)shortLinks:(id)sender {
    [self.bitly shorten:self.urlInput.text];
    self.urlInput.text  = [self.bitly shortUrl];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
