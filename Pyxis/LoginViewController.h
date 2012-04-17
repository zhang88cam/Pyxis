//
//  LoginViewController.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol loginDelegate

-(void)loginToMenu;

@end

@interface LoginViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    id <loginDelegate> delegate;

}

@property (retain, nonatomic) IBOutlet UIButton *LoginButton;
@property (retain, nonatomic) IBOutlet UIButton *CancelButton;
@property (retain, nonatomic) IBOutlet UITableView *loginTableView;

@property (retain, nonatomic) id delegate;


@end


