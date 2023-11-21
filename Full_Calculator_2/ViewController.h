//
//  ViewController.h
//  Full_Calculator_2
//
//  Created by MacBook Pro on 10/11/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UIButton *zero;
@property (weak, nonatomic) IBOutlet UIButton *one;
@property (weak, nonatomic) IBOutlet UIButton *two;
@property (weak, nonatomic) IBOutlet UIButton *three;
@property (weak, nonatomic) IBOutlet UIButton *four;
@property (weak, nonatomic) IBOutlet UIButton *five;
@property (weak, nonatomic) IBOutlet UIButton *six;
@property (weak, nonatomic) IBOutlet UIButton *seven;
@property (weak, nonatomic) IBOutlet UIButton *eight;
@property (weak, nonatomic) IBOutlet UIButton *nine;
@property (weak, nonatomic) IBOutlet UIButton *dot;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *subtract;
@property (weak, nonatomic) IBOutlet UIButton *multiply;
@property (weak, nonatomic) IBOutlet UIButton *divide;
@property (weak, nonatomic) IBOutlet UIButton *modulus;


- (IBAction)dotButton:(id)sender;
- (IBAction)threeButton:(id)sender;
- (IBAction)fourButton:(id)sender;
- (IBAction)fiveButton:(id)sender;
- (IBAction)sixButton:(id)sender;
- (IBAction)sevenButton:(id)sender;
- (IBAction)eightButton:(id)sender;
- (IBAction)nineButton:(id)sender;
- (IBAction)twoButton:(id)sender;
- (IBAction)oneButton:(id)sender;
- (IBAction)zeroButton:(id)sender;
- (IBAction)addButton:(id)sender;
- (IBAction)subtractButton:(id)sender;
- (IBAction)multiplyButton:(id)sender;
- (IBAction)divideButton:(id)sender;
- (IBAction)modulusButton:(id)sender;
- (IBAction)equalButton:(id)sender;
- (IBAction)cutButton:(id)sender;
- (IBAction)clearButton:(id)sender;
@end
