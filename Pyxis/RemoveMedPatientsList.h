//
//  RemoveMedPatientsList.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RemoveMedPatientsList : UIViewController <UITabBarDelegate, UITableViewDataSource, UITableViewDelegate>
@property (retain, nonatomic) IBOutlet UIImageView *Logo;
@property (retain, nonatomic) IBOutlet UITableView *patientListTableView;
@property (retain, nonatomic) IBOutlet UITabBar *actionTabBar;
@property (retain, nonatomic) IBOutlet UITabBarItem *mainMenuButton;
@property (retain, nonatomic) IBOutlet UIButton *exitButton;

@end
