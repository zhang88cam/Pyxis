//
//  MainMenu.m
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MainMenu.h"

#import "PatientList.h"

#import "RemoveMedPatientsList.h"

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
- (IBAction)exitButtonPressed:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Touch Events

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint pt = [touch locationInView:self.view];
    bool inX = NO;
    bool inY = NO;
    if(pt.x >= self.Patients.frame.origin.x && pt.x <= self.Patients.frame.origin.x + self.Patients.frame.size.width)
        inX = YES;
    if(pt.y >= self.Patients.frame.origin.y && pt.y <= self.Patients.frame.origin.y + self.Patients.frame.size.height)
        inY = YES;
    if(inX && inY)
    {
        NSLog(@"Patients button is touched");
        PatientList *patientsList = [[PatientList alloc] initWithNibName:@"PatientList" bundle:nil];
        [self.navigationController pushViewController:patientsList animated:YES];
    }
    bool ReinX = NO;
    bool ReinY = NO;
    if(pt.x >= self.Remove.frame.origin.x && pt.x <= self.Remove.frame.origin.x + self.Remove.frame.size.width)
        ReinX = YES;
    if(pt.y >= self.Remove.frame.origin.y && pt.y <= self.Remove.frame.origin.y + self.Remove.frame.size.height)
        ReinY = YES;
    if(ReinX && ReinY)
    {
        NSLog(@"Remove button is touched");
        RemoveMedPatientsList *removeMedList = [[RemoveMedPatientsList alloc] initWithNibName:@"RemoveMedPatientsList" bundle:nil];
        [self.navigationController pushViewController:removeMedList animated:YES];
    }
    
}


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.logo.image = [UIImage imageNamed:@"logo.jpg"];
    [self.view addSubview:self.logo];
    
    [self.exitButton.layer setBorderColor: [[UIColor blackColor] CGColor]];
    [self.exitButton.layer setBorderWidth: 1.0];    
    
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
    [exitButton release];
    [super dealloc];
}
@end
