//
//  PatientList.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PatientList.h"
#import "SelectPatientsListTableViewController.h"
#import "MyPatientsTableViewController.h"

@implementation PatientList
@synthesize Logo;
@synthesize selectPatientsTableView;
@synthesize myPatientsTableView;
@synthesize tabBar;
@synthesize AcceptBarButton;
@synthesize DeselectAllButton;
@synthesize CancelButton;

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
-(void)AcceptbuttonClicked
{
    NSLog(@"Accept button pressed");
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.Logo.image = [UIImage imageNamed:@"logo.jpg"];
    [self.view addSubview:self.Logo];
    
    SelectPatientsListTableViewController *selectPatientsTVC = [[SelectPatientsListTableViewController alloc] initWithNibName:@"SelectPatientsListTableViewController" bundle:nil];
    
    MyPatientsTableViewController *myPatientsTVC = [[MyPatientsTableViewController alloc] initWithNibName:@"MyPatientsTableViewController" bundle:nil];
    [selectPatientsTableView setDataSource:selectPatientsTVC];
    [myPatientsTableView setDataSource:myPatientsTVC];
    
	[selectPatientsTableView setDelegate:selectPatientsTVC];
    [myPatientsTableView setDelegate:myPatientsTVC];
    
	selectPatientsTableView = selectPatientsTVC.tableView;
    myPatientsTableView = myPatientsTVC.tableView;
    
    self.tabBar.delegate = self;
    
    NSLog(@"%@", tabBar.items);
    
        
}

- (void)viewDidUnload
{
    [self setLogo:nil];
    [self setSelectPatientsTableView:nil];
    [self setMyPatientsTableView:nil];
    [self setTabBar:nil];
    [self setAcceptBarButton:nil];
    [self setDeselectAllButton:nil];
    [self setCancelButton:nil];
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
    [selectPatientsTableView release];
    [myPatientsTableView release];
    [tabBar release];
    [AcceptBarButton release];
    [DeselectAllButton release];
    [CancelButton release];
    [super dealloc];
}

#pragma mark - Tab Bar Delegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if (item == self.AcceptBarButton) {
        NSLog(@"Select accept");
        [self.navigationController popViewControllerAnimated:YES];
    }
}
@end
