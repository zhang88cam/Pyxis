//
//  PatientList.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "PatientList.h"
#import "SelectPatientsListTableViewController.h"


@interface PatientList()
{
    NSArray *allPatients_;
    NSMutableArray *selectedPatients_;
}

@property(retain, nonatomic) NSArray *allPatients;
@property (retain, nonatomic) NSMutableArray *selectedPatients;

@end
@implementation PatientList
@synthesize Logo;
@synthesize selectPatientsTableView;
@synthesize myPatientsTableView;
@synthesize exitButton;
@synthesize tabBar;
@synthesize AcceptBarButton;
@synthesize DeselectAllButton;
@synthesize CancelButton;

@synthesize allPatients = allPatients_;
@synthesize selectedPatients = selectedPatients_;

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


#pragma mark - Button Actions
- (IBAction)exitButtonPressed:(id)sender 
{
    [self.navigationController popToRootViewControllerAnimated:YES];

}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.allPatients = [[NSArray alloc] initWithObjects:@"ANDERSON, PATRICIA",@"BRONZE, MICHAEL", @"OIAMOND, BILL", @"PEARLE, SOPHIA ANNE",@"QUARTZ, GEOGRE", nil];
    
    self.Logo.image = [UIImage imageNamed:@"logo.jpg"];
    [self.view addSubview:self.Logo];
    
    [self.exitButton.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.exitButton.layer setBorderWidth: 1.0];   
    
    SelectPatientsListTableViewController *selectPatientsTVC = [[SelectPatientsListTableViewController alloc] initWithNibName:@"SelectPatientsListTableViewController" bundle:nil];
    selectPatientsTVC.allPatients = self.allPatients;
    self.selectedPatients = selectPatientsTVC.selectedPatients;
    
    myPatientsTableView.delegate = self;
    myPatientsTableView.dataSource = self;
    
    [selectPatientsTableView setDataSource:selectPatientsTVC];
    
	[selectPatientsTableView setDelegate:selectPatientsTVC];
    
	selectPatientsTableView = selectPatientsTVC.tableView;
    
    self.tabBar.delegate = self;
        
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
    [self setExitButton:nil];
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
    [exitButton release];
    
    [allPatients_ release], allPatients_ = nil;
    [selectedPatients_ release], selectedPatients_ = nil;
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

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.selectedPatients count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    cell.textLabel.text = [self.selectedPatients objectAtIndex:[indexPath row]];
    
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"My patients";
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.

    
}
@end
