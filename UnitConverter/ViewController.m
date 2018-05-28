//
//  ViewController.m
//  UnitConverter
//
//  Created by Duc Vu on 5/27/18.
//  Copyright © 2018 Duc Vu. All rights reserved.
//

#import "ViewController.h"
// convert from inches to feet
double convertInchesToFeet(double unitOneValue){
    double unitTwoValue = unitOneValue / 12;
    return unitTwoValue;
}

// convert from inches to yards
double convertInchesToYards(double unitOneValue){
    double unitTwoValue = unitOneValue / 36;
    return unitTwoValue;
}

// convert from inches to miles
double convertInchesToMiles(double unitOneValue){
    double unitTwoValue = unitOneValue / 63360;
    return unitTwoValue;
}

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet UITextField *inputField;
    @property (weak, nonatomic) IBOutlet UISegmentedControl *segmenController;
    @property (weak, nonatomic) IBOutlet UILabel *outputField;
    
    @property (weak, nonatomic) IBOutlet UILabel *outputLableField;
    @end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    // segment 1 - convert from inches to feet
    if(self.segmenController.selectedSegmentIndex == 0){
        double unitTwoValue = convertInchesToFeet(userInput);
        [buf appendString: [@(unitTwoValue) stringValue]];
    }
    
    // segment 2 - convert from inches to yards
    else if (self.segmenController.selectedSegmentIndex == 1){
        double unitTwoValue = convertInchesToYards(userInput);
        [buf appendString: [@(unitTwoValue) stringValue]];
    }
    
    // segment 3 - convert from inches to miles
    else {
        double unitTwoValue = convertInchesToMiles(userInput);
        [buf appendString: [@(unitTwoValue) stringValue]];
    }
    
    self.outputLableField.text = buf;
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
