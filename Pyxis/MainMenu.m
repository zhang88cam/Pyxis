//
//  MainMenu.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainMenu.h"

#import <QuartzCore/QuartzCore.h>


@implementation MainMenu
@synthesize Remove;
@synthesize Return;
@synthesize Waste;
@synthesize Patients;
@synthesize PatientSummary;
@synthesize Load;
@synthesize Refill;
@synthesize Inventory;
@synthesize UnloadMenu;
@synthesize Outdate;
@synthesize Kits;
@synthesize ReportsMenu;
@synthesize UserMenu;
@synthesize SystemMenu;
@synthesize logo;

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
-(IBAction)patientsPress:(id)sender
{
    
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.logo.image = [UIImage imageNamed:@"logo.jpg"];
    [self.view addSubview:self.logo];
    
    self.Remove.image = [UIImage imageNamed:@"remove.jpg"];
    [self.Remove.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Remove.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Remove];
    
    self.Return.image = [UIImage imageNamed:@"return.jpg"];
    [self.Return.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Return.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Return];
    
    self.Waste.image = [UIImage imageNamed:@"waste.jpg"];
    [self.Waste.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Waste.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Waste];
    
    self.Patients.image = [UIImage imageNamed:@"patient.jpg"];
    [self.Patients.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Patients.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Patients];
    self.Patients.userInteractionEnabled = YES;
    
    
    self.PatientSummary.image = [UIImage imageNamed:@"patientSummary.jpg"];
    [self.PatientSummary.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.PatientSummary.layer setBorderWidth: 2.0];
    [self.view addSubview:self.PatientSummary];
    
    self.Load.image = [UIImage imageNamed:@"load.jpg"];
    [self.Load.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Load.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Load];
    
    self.Refill.image = [UIImage imageNamed:@"refill.jpg"];
    [self.Refill.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Refill.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Refill]; 
    
    self.Inventory.image = [UIImage imageNamed:@"inventory.jpg"];
    [self.Inventory.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Inventory.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Inventory];
    
    self.UnloadMenu.image = [UIImage imageNamed:@"unloadMenu.jpg"];
    [self.UnloadMenu.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.UnloadMenu.layer setBorderWidth: 2.0];
    [self.view addSubview:self.UnloadMenu];
    
    self.Outdate.image = [UIImage imageNamed:@"outdate.jpg"];
    [self.Outdate.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Outdate.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Outdate];
    
    self.Kits.image = [UIImage imageNamed:@"kits.jpg"];
    [self.Kits.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.Kits.layer setBorderWidth: 2.0];
    [self.view addSubview:self.Kits];
    
    self.ReportsMenu.image = [UIImage imageNamed:@"reportMenu.jpg"];
    [self.ReportsMenu.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.ReportsMenu.layer setBorderWidth: 2.0];
    [self.view addSubview:self.ReportsMenu];
    
    self.UserMenu.image = [UIImage imageNamed:@"userMenu.jpg"];
    [self.UserMenu.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.UserMenu.layer setBorderWidth: 2.0];
    [self.view addSubview:self.UserMenu];
    
    self.SystemMenu.image = [UIImage imageNamed:@"systemMenu.jpg"];
    [self.SystemMenu.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.SystemMenu.layer setBorderWidth: 2.0];
    [self.view addSubview:self.SystemMenu];
    

}

- (void)viewDidUnload
{
    [self setRemove:nil];
    [self setReturn:nil];
    [self setWaste:nil];
    [self setPatients:nil];
    [self setPatientSummary:nil];
    [self setLoad:nil];
    [self setRefill:nil];
    [self setInventory:nil];
    [self setUnloadMenu:nil];
    [self setOutdate:nil];
    [self setKits:nil];
    [self setReportsMenu:nil];
    [self setUserMenu:nil];
    [self setSystemMenu:nil];
    [self setLogo:nil];
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
    [Remove release];
    [Return release];
    [Waste release];
    [Patients release];
    [PatientSummary release];
    [Load release];
    [Refill release];
    [Inventory release];
    [UnloadMenu release];
    [Outdate release];
    [Kits release];
    [ReportsMenu release];
    [UserMenu release];
    [SystemMenu release];
    [logo release];
    [super dealloc];
}
@end
