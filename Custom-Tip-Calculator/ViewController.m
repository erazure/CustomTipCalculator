//
//  ViewController.m
//  Custom-Tip-Calculator
//
//  Created by Erik Goossens on 2018-06-16.
//  Copyright © 2018 Erik Goossens. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tipAmountLabel.text = @"";
    self.billAmountTextField.delegate = self;
}

- (IBAction)calculateTip:(id)sender {
    [self.billAmountTextField resignFirstResponder];

    float tipPercentValue = (self.tipPercentageTextField.text.floatValue)/100.0;
    
    if ([self.tipPercentageTextField.text isEqualToString:@""]) {
        tipPercentValue = .15;
    }
    NSString *billAmount = self.billAmountTextField.text;
    float billValue = billAmount.floatValue;
    float tipAmount = billValue * tipPercentValue;
    float total = tipAmount + billValue;
    NSString *result = @(total).stringValue;
    self.tipAmountLabel.text = result;
    
    
    /* 1. take textfield input text and convert to strong
     2. convert string to int value
     3/ take into account the custom tip percentage
     4. update label with calculated bill amount + tip
     
     
     */
}


@end


















