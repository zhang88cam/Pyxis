//
//  MainMenu.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainMenu : UIViewController
@property (retain, nonatomic) IBOutlet UIImageView *Remove;
@property (retain, nonatomic) IBOutlet UIImageView *Return;
@property (retain, nonatomic) IBOutlet UIImageView *Waste;
@property (retain, nonatomic) IBOutlet UIImageView *Patients;
@property (retain, nonatomic) IBOutlet UIImageView *PatientSummary;

@property (retain, nonatomic) IBOutlet UIImageView *Load;
@property (retain, nonatomic) IBOutlet UIImageView *Refill;
@property (retain, nonatomic) IBOutlet UIImageView *Inventory;
@property (retain, nonatomic) IBOutlet UIImageView *UnloadMenu;
@property (retain, nonatomic) IBOutlet UIImageView *Outdate;

@property (retain, nonatomic) IBOutlet UIImageView *Kits;
@property (retain, nonatomic) IBOutlet UIImageView *ReportsMenu;
@property (retain, nonatomic) IBOutlet UIImageView *UserMenu;
@property (retain, nonatomic) IBOutlet UIImageView *SystemMenu;

@property (retain, nonatomic) IBOutlet UIImageView *logo;

@end
