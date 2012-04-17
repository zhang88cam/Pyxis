//
//  ViewController.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"

@interface ViewController ()
{
    UINavigationController *loginNavigationController_;
    LoginViewController *loginViewController_;
}

@property (retain, nonatomic) UINavigationController *loginNavigationController;
@property (retain, nonatomic) LoginViewController *loginViewController;
@end

@implementation ViewController

@synthesize loginViewController = loginViewController_;
@synthesize loginNavigationController  = loginNavigationController_;

- (void)dealloc
{
    [loginNavigationController_ release], loginNavigationController_ = nil;
    [loginViewController_ release], loginViewController_ = nil;
    [super dealloc];
}

- (IBAction)singleFingerTap:(UIGestureRecognizer *)sender {
    [self presentModalViewController:self.loginNavigationController animated:YES];
    NSLog(@"pop up log in window");

}


- (void)createGestureRecognizers {
    UITapGestureRecognizer *singleFingerTap = [[UITapGestureRecognizer alloc]
                                                initWithTarget:self action:@selector(singleFingerTap:)];
    singleFingerTap.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:singleFingerTap];
    [singleFingerTap release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"View did load");
    LoginViewController *loginVC = [[LoginViewController alloc] initWithNibName:@"LoginViewController" bundle:nil];
    self.loginViewController = loginVC;
    UINavigationController *loginNavController = [[UINavigationController alloc] initWithRootViewController:loginViewController_];
    self.loginNavigationController = loginNavController;
    [loginVC release];
    [loginNavController release];
    [self createGestureRecognizers];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.


}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
