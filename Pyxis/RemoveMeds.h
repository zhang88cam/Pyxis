//
//  RemoveMeds.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RemoveMeds : UIViewController <UITabBarDelegate>
@property (retain, nonatomic) IBOutlet UITableView *patientListTableView;
@property (retain, nonatomic) IBOutlet UITabBar *actionsTabBar;

@property (retain, nonatomic) IBOutlet UITabBarItem *mainMenuButton;

@end
