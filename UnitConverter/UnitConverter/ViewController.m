//
//  ViewController.m
//  UnitConverter
//
//  Created by Nadia Ahmadian on 2022-03-11.
//

#import "ViewController.h"
double ConvertMilesPerHourToKilometerPerHour(double MilesPerHour){
    double KilometerPerHour;
    KilometerPerHour = MilesPerHour * 1.609;
    return KilometerPerHour;
}

double ConvertMilesPerHourToFootPerSecond(double MilesPerHour){
    double FootPerSecond;
    FootPerSecond = MilesPerHour * 1.467;
    return FootPerSecond;
}

double ConvertMilesPerHourToKnot(double MilesPerHour){
    double Knot;
    Knot = MilesPerHour * 1.151;
    return Knot;
}
@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *inputField;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (strong, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController
- (IBAction)updateButton:(id)sender {
    
    double userInput = [self.inputField.text doubleValue];
    NSMutableString *buf = [NSMutableString new];
    if (self.segmentController.selectedSegmentIndex == 0){
        double kilometerPerHourValue = ConvertMilesPerHourToKilometerPerHour(userInput);
        [buf appendString: [@(kilometerPerHourValue) stringValue]];
    }else if (self.segmentController.selectedSegmentIndex == 1)
    {
        double footPerSecondValue = ConvertMilesPerHourToFootPerSecond(userInput);
        [buf appendString: [@(footPerSecondValue) stringValue]];
    }else{
        double knotValue = ConvertMilesPerHourToKnot(userInput);
        [buf appendString: [@(knotValue) stringValue]];
    }
    
    self.outputField.text = buf;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
