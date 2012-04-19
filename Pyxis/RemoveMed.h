//
//  RemoveMed.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RemoveMed : UIViewController <UITabBarDelegate>
@property (retain, nonatomic) IBOutlet UIImageView *Logo;
@property (retain, nonatomic) IBOutlet UIView *drawerView;

@property (retain, nonatomic) IBOutlet UITabBar *actionTabBar;
@property (retain, nonatomic) IBOutlet UITabBarItem *cancelAllMedsButton;

@property (retain, nonatomic) IBOutlet UIButton *sevenButton;
@property (retain, nonatomic) IBOutlet UIButton *eightButton;
@property (retain, nonatomic) IBOutlet UIButton *nineButton;
@property (retain, nonatomic) IBOutlet UIButton *fourButton;
@property (retain, nonatomic) IBOutlet UIButton *fiveButton;
@property (retain, nonatomic) IBOutlet UIButton *sixButton;
@property (retain, nonatomic) IBOutlet UIButton *oneButton;
@property (retain, nonatomic) IBOutlet UIButton *twoButton;
@property (retain, nonatomic) IBOutlet UIButton *threeButton;
@property (retain, nonatomic) IBOutlet UIButton *zeroButton;
@property (retain, nonatomic) IBOutlet UIButton *dotButton;
@property (retain, nonatomic) IBOutlet UIButton *delButton;

@end
