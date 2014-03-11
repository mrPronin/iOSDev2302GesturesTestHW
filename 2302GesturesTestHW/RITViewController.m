//
//  RITViewController.m
//  2302GesturesTestHW
//
//  Created by Pronin Alexander on 11.03.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITViewController.h"
#import "UIImageAnimatedGIF.h"

@interface RITViewController ()

@end

@implementation RITViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    NSURL* path = [[NSBundle mainBundle] URLForResource:@"Totoro" withExtension:@"gif"];
    //NSString* stringPath = [path absoluteString];
    NSData* data = [NSData dataWithContentsOfURL:path];
    UIImage* image = [UIImage animatedImageWithAnimatedGIFData:data];
    self.gif.image = image;
    
}

@end
