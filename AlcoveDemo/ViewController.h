//
//  ViewController.h
//  AlcoveDemo
//
//  Created by Isaac Overacker on 2/14/15.
//  Copyright (c) 2015 Isaac Overacker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *promptLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UILabel *outputLabel;

@end

