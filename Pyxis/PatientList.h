//
//  PatientList.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientList : UIViewController <UITabBarDelegate,UITableViewDelegate, UITableViewDataSource >
@property (retain, nonatomic) IBOutlet UIImageView *Logo;
@property (retain, nonatomic) IBOutlet UITableView *selectPatientsTableView;
@property (retain, nonatomic) IBOutlet UITableView *myPatientsTableView;

@property (retain, nonatomic) IBOutlet UIButton *exitButton;
@property (retain, nonatomic) IBOutlet UITabBar *tabBar;
@property (retain, nonatomic) IBOutlet UITabBarItem *AcceptBarButton;
@property (retain, nonatomic) IBOutlet UITabBarItem *DeselectAllButton;
@property (retain, nonatomic) IBOutlet UITabBarItem *CancelButton;
@end
