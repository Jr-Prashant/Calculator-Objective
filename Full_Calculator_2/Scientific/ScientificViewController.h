//
//  ScientificViewController.h
//  Full_Calculator_2
//
//  Created by MacBook Pro on 10/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScientificViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *dot;
@property (weak, nonatomic) IBOutlet UIButton *zero;
@property (weak, nonatomic) IBOutlet UIButton *sqRoot;
@property (weak, nonatomic) IBOutlet UIButton *log;
@property (weak, nonatomic) IBOutlet UIButton *sin;
@property (weak, nonatomic) IBOutlet UIButton *cos;
@property (weak, nonatomic) IBOutlet UIButton *tan;
@property (weak, nonatomic) IBOutlet UIButton *inverse;
@property (weak, nonatomic) IBOutlet UIButton *modulus;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *power;
@property (weak, nonatomic) IBOutlet UIButton *seven;
@property (weak, nonatomic) IBOutlet UIButton *eight;
@property (weak, nonatomic) IBOutlet UIButton *nine;
@property (weak, nonatomic) IBOutlet UIButton *subtract;
@property (weak, nonatomic) IBOutlet UIButton *factorial;
@property (weak, nonatomic) IBOutlet UIButton *four;
@property (weak, nonatomic) IBOutlet UIButton *five;
@property (weak, nonatomic) IBOutlet UIButton *six;
@property (weak, nonatomic) IBOutlet UIButton *multiply;
@property (weak, nonatomic) IBOutlet UIButton *pi;
@property (weak, nonatomic) IBOutlet UIButton *one;
@property (weak, nonatomic) IBOutlet UIButton *two;
@property (weak, nonatomic) IBOutlet UIButton *three;
@property (weak, nonatomic) IBOutlet UIButton *divide;


- (IBAction)sqRootButton:(id)sender;
- (IBAction)logButton:(id)sender;
- (IBAction)sinButton:(id)sender;
- (IBAction)cosButton:(id)sender;
- (IBAction)tanButton:(id)sender;
- (IBAction)inverseButton:(id)sender;
- (IBAction)clearButton:(id)sender;
- (IBAction)cutButton:(id)sender;
- (IBAction)modulusButton:(id)sender;
- (IBAction)addButton:(id)sender;
- (IBAction)powerButton:(id)sender;
- (IBAction)sevenButton:(id)sender;
- (IBAction)eightButton:(id)sender;
- (IBAction)nineButton:(id)sender;
- (IBAction)subtractButton:(id)sender;
- (IBAction)factorialButton:(id)sender;
- (IBAction)fourButton:(id)sender;
- (IBAction)fiveButton:(id)sender;
- (IBAction)sixButton:(id)sender;
- (IBAction)multiplyButton:(id)sender;
- (IBAction)piButton:(id)sender;
- (IBAction)oneButton:(id)sender;
- (IBAction)twoButton:(id)sender;
- (IBAction)threeButton:(id)sender;
- (IBAction)divideButton:(id)sender;
- (IBAction)dotButton:(id)sender;
- (IBAction)zeroButton:(id)sender;
- (IBAction)equalButton:(id)sender;


@end

NS_ASSUME_NONNULL_END
