//
//  ViewController.m
//  Nav-3
//
//  Created by Lin Chuankai on 8/26/12.
//  Copyright (c) 2012 KILAB. All rights reserved.
//

#import "ViewController.h"
#import "ViewLevel1Controller.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"Root view loaded");
	// Do any additional setup after loading the view, typically from a nib.
//    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = YES;
}

- (IBAction)showViewLevel1:(id)sender {
    NSLog(@"showViewLevel1");
    ViewLevel1Controller *level1Controller = [[ViewLevel1Controller alloc] init];
    [self.navigationController pushViewController:level1Controller animated:YES];
}

@end
