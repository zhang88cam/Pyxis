//
//  RemoveMeds.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RemoveMeds.h"

#import "MyPatientsTableViewController.h"


@implementation RemoveMeds
@synthesize patientListTableView;
@synthesize actionsTabBar;
@synthesize mainMenuButton;

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

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    MyPatientsTableViewController *myPatientsTVC = [[MyPatientsTableViewController alloc] initWithNibName:@"MyPatientsTableViewController" bundle:nil];
    [patientListTableView setDataSource:myPatientsTVC];
    [patientListTableView setDelegate:myPatientsTVC];
    patientListTableView = myPatientsTVC.tableView;
    
    self.actionsTabBar.delegate = self;

    
}

- (void)viewDidUnload
{
    [self setPatientListTableView:nil];
    [self setActionsTabBar:nil];
    [self setMainMenuButton:nil];
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
    [patientListTableView release];
    [actionsTabBar release];
    [mainMenuButton release];
    [super dealloc];
}

#pragma mark - Tab Bar Delegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if (item == self.mainMenuButton) {
        NSLog(@"Select Main Menu");
        [self.navigationController popViewControllerAnimated:YES];
    }
}
@end
