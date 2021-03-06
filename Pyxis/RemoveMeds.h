//
//  RemoveMeds.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RemoveMeds : UIViewController <UITabBarDelegate, UITableViewDelegate, UITableViewDataSource>
@property (retain, nonatomic) IBOutlet UIImageView *Logo;
@property (retain, nonatomic) IBOutlet UITableView *patientListTableView;
@property (retain, nonatomic) IBOutlet UITabBar *actionsTabBar;

@property (retain, nonatomic) IBOutlet UITabBarItem *removeSelectionButton;
@property (retain, nonatomic) IBOutlet UITabBarItem *mainMenuButton;
@property (retain, nonatomic) IBOutlet UITabBarItem *patientListButton;
@property (retain, nonatomic) IBOutlet UIButton *exitButton;

@end
