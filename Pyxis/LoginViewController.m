//
//  LoginViewController.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginTableViewCell.h"

@implementation LoginViewController
@synthesize LoginButton;
@synthesize CancelButton;
@synthesize loginTableView;

@synthesize delegate;

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

- (void)dealloc {
    [LoginButton release];
    [CancelButton release];
    [loginTableView release];
    [super dealloc];
}

#pragma mark - Button Actions

- (IBAction)LoginButton:(id)sender {
    // Push a new View Controller
    [self.delegate loginToMenu];
    [self dismissModalViewControllerAnimated:YES];
}
- (IBAction)CancelButton:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}



#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"LOGIN";
    self.loginTableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]
                                                       style:UITableViewStylePlain];
    self.loginTableView.dataSource = self;
    self.loginTableView.delegate = self;
    [self.loginTableView reloadData];
}

- (void)viewDidUnload
{
    [self setLoginButton:nil];
    [self setCancelButton:nil];
    [self setLoginTableView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

#pragma mark - Table View Data Source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //    if (cell == nil) {
    //        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    //    }
        LoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (cell == nil) {
            cell = [[[LoginTableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        }
    
    // Configure the cell.
    if (indexPath.row == 0) {
        cell.textLabel.text = @"User ID";
 
    }
    else
        cell.textLabel.text = @"Password";
    //    
    //    cell.detailTextLabel.text = detailedText;
    return cell;
}



@end
