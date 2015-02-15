//
//  ViewControllerTests.m
//  AlcoveDemo
//
//  Created by Isaac Overacker on 2/15/15.
//  Copyright (c) 2015 Isaac Overacker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface ViewController (Test)

- (IBAction)submitButtonTapped:(id)sender;

@end

@interface ViewControllerTests : XCTestCase

@property (nonatomic, strong) ViewController *viewControllerToTest;

@end

@implementation ViewControllerTests

- (void)setUp
{
    [super setUp];
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    self.viewControllerToTest = [mainStoryboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.viewControllerToTest view]; // Force view to load.
}

- (void)tearDown
{
    [super tearDown];
}

/**
 *  This test will exercise everything except resetButtonTapped:.
 */
- (void)testSubmitButtonTapped
{
    XCTAssertEqualObjects(self.viewControllerToTest.outputLabel.text, @"");
    
    self.viewControllerToTest.nameTextField.text = @"Test Name";
    [self.viewControllerToTest submitButtonTapped:nil];
    
    XCTAssertEqualObjects(self.viewControllerToTest.outputLabel.text, @"Hello, Test Name!");
}

@end
