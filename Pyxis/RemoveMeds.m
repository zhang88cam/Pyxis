//
//  RemoveMeds.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "RemoveMeds.h"

#import <QuartzCore/QuartzCore.h>

#import "RemoveMed.h"


@implementation RemoveMeds
@synthesize Logo;
@synthesize patientListTableView;
@synthesize actionsTabBar;
@synthesize removeSelectionButton;
@synthesize mainMenuButton;
@synthesize patientListButton;
@synthesize exitButton;

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
    self.Logo.image = [UIImage imageNamed:@"logo.jpg"];
    [self.view addSubview:self.Logo];
    
    patientListTableView.dataSource = self;
    patientListTableView.delegate = self;

    
    self.actionsTabBar.delegate = self;
    self.removeSelectionButton.title = nil;
    self.removeSelectionButton.enabled = NO;
    
    [self.exitButton.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.exitButton.layer setBorderWidth: 1.0];    

    
}

- (void)viewDidUnload
{
    [self setPatientListTableView:nil];
    [self setActionsTabBar:nil];
    [self setMainMenuButton:nil];
    [self setLogo:nil];
    [self setRemoveSelectionButton:nil];
    [self setPatientListButton:nil];
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
    [patientListTableView release];
    [actionsTabBar release];
    [mainMenuButton release];
    [Logo release];
    [removeSelectionButton release];
    [patientListButton release];
    [exitButton release];
    [super dealloc];
}

#pragma mark - Tab Bar Delegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if (item == self.mainMenuButton) {
        NSLog(@"Select Main Menu");
        [self.navigationController popToViewController:[[self.navigationController viewControllers] objectAtIndex:1] animated:YES];

    }
    if (item == self.removeSelectionButton) {
        NSLog(@"Select remove selections");
        RemoveMed *removeMedViewController = [[RemoveMed alloc] initWithNibName:@"RemoveMed" bundle:nil];
        [self.navigationController pushViewController:removeMedViewController animated:YES];
    }
    if (item == self.patientListButton) {
        NSLog(@"Select Patient List");
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
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    cell.textLabel.text = @"Med";
    
    
    return cell;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"All Meds";
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    self.removeSelectionButton.title = @"Remove Selections";
    self.removeSelectionButton.enabled = YES;

    
}
@end
