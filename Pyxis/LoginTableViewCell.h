//
//  LoginTableViewCell.h
//  Pyxis
//
//  Created by Qiuhao Zhang on 4/17/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginTableViewCell : UITableViewCell <UITextFieldDelegate>
{
    UILabel *titleLabel_;
    UITextField *textField_;
    NSIndexPath *indexPath_;
    id delegate_;
}
@property(nonatomic, retain) UILabel *titleLabel;
@property (nonatomic, retain) UITextField *textField;
@property (nonatomic, retain) NSIndexPath *indexPath;
@property (nonatomic, assign) id delegate;

@end

@protocol TextFieldDelgate 

-(void)textFieldDidReturnWithIndexPath:(NSIndexPath *)IndexPath;

@end
