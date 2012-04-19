//
//  RemoveMed.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RemoveMed.h"

@implementation RemoveMed
@synthesize Logo;
@synthesize drawerView;
@synthesize actionTabBar;
@synthesize cancelAllMedsButton;
@synthesize sevenButton;
@synthesize eightButton;
@synthesize nineButton;
@synthesize fourButton;
@synthesize fiveButton;
@synthesize sixButton;
@synthesize oneButton;
@synthesize twoButton;
@synthesize threeButton;
@synthesize zeroButton;
@synthesize dotButton;
@synthesize delButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

-(void)showDrawer
{
    if (self.drawerView.isHidden) {
        self.drawerView.hidden = NO;
    }
}

#pragma mark - Button Actions
- (IBAction)sevenButtonPressed:(id)sender 
{
    [self showDrawer];
}

- (IBAction)eightButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)nineButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)fourButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)fiveButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)sixButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)oneButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)twoButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)threeButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)zeroButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)dotButtonPressed:(id)sender 
{
    [self showDrawer];

}
- (IBAction)delButtonPressed:(id)sender 
{
    [self showDrawer];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.Logo.image = [UIImage imageNamed:@"logo.jpg"];
    [self.view addSubview:self.Logo];
    
    self.actionTabBar.delegate = self;

    
    self.drawerView.hidden = YES;
    
    
}

- (void)viewDidUnload
{
    [self setLogo:nil];
    [self setDrawerView:nil];
    [self setActionTabBar:nil];
    [self setCancelAllMedsButton:nil];
    [self setSevenButton:nil];
    [self setEightButton:nil];
    [self setNineButton:nil];
    [self setFourButton:nil];
    [self setFiveButton:nil];
    [self setSixButton:nil];
    [self setOneButton:nil];
    [self setTwoButton:nil];
    [self setThreeButton:nil];
    [self setZeroButton:nil];
    [self setDotButton:nil];
    [self setDelButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
  
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void)dealloc {
    [Logo release];
    [drawerView release];
    [actionTabBar release];
    [cancelAllMedsButton release];
    [sevenButton release];
    [eightButton release];
    [nineButton release];
    [fourButton release];
    [fiveButton release];
    [sixButton release];
    [oneButton release];
    [twoButton release];
    [threeButton release];
    [zeroButton release];
    [dotButton release];
    [delButton release];
    [super dealloc];
}


#pragma mark - Tab Bar Delegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if (item == self.cancelAllMedsButton) {
        NSLog(@"Select cancel all meds");
        [self.navigationController popViewControllerAnimated:YES];
    }

}
@end
