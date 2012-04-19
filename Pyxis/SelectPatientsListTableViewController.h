//
//  SelectPatientsListTableViewController.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectPatientsListTableViewController : UITableViewController
{
    NSArray *allPatients_;
    NSMutableArray *selectedPatients_;
}
@property (retain, nonatomic) NSArray *allPatients;
@property (retain, nonatomic) NSMutableArray *selectedPatients;

@end
