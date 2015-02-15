//
//  ViewController.m
//  AlcoveDemo
//
//  Created by Isaac Overacker on 2/14/15.
//  Copyright (c) 2015 Isaac Overacker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self resetLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
