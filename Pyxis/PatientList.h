//
//  PatientList.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PatientList : UIViewController
@property (retain, nonatomic) IBOutlet UIImageView *Logo;
@property (retain, nonatomic) IBOutlet UITableView *selectPatientsTableView;
@property (retain, nonatomic) IBOutlet UITableView *myPatientsTableView;

@end
