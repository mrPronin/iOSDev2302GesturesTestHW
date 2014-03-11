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
    
    // tap gesture
    UITapGestureRecognizer* tapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tapGesture];
}

- (void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    NSURL* path = [[NSBundle mainBundle] URLForResource:@"Totoro" withExtension:@"gif"];
    NSData* data = [NSData dataWithContentsOfURL:path];
    UIImage* image = [UIImage animatedImageWithAnimatedGIFData:data];
    self.gif.image = image;
    
}

#pragma mark - Gestures

- (void) handleTap:(UITapGestureRecognizer*)tapGesture {
    
    NSLog(@"Tap: %@", NSStringFromCGPoint([tapGesture locationInView:self.view]));
    
    //[self.gif.layer removeAllAnimations];
    
    [UIView animateWithDuration:1.5f
                          delay:0
                        options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState
                     animations:^{
                         self.gif.center = [tapGesture locationInView:self.view];
                     }
                     completion:^(BOOL finished) {
                     }];
}

@end
