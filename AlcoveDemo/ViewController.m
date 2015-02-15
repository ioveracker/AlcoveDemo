//
//  ViewController.m
//  AlcoveDemo
//
//  Created by Isaac Overacker on 2/14/15.
//  Copyright (c) 2015 Isaac Overacker. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self resetLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)resetLabel
{
    self.outputLabel.text = @"";
}

- (IBAction)submitButtonTapped:(id)sender
{
    self.outputLabel.text = [NSString stringWithFormat:@"Hello, %@!", self.nameTextField.text];
}

- (IBAction)resetButtonTapped:(id)sender
{
    [self resetLabel];
}

@end
