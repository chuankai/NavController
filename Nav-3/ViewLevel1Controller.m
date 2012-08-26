//
//  ViewLevel1Controller.m
//  Nav-3
//
//  Created by Lin Chuankai on 8/26/12.
//  Copyright (c) 2012 KILAB. All rights reserved.
//

#import "ViewLevel1Controller.h"

@interface ViewLevel1Controller ()

@end

@implementation ViewLevel1Controller

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.navigationController.navigationBarHidden = NO;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)removeView:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
