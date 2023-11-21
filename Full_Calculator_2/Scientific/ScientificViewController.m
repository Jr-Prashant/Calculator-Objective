//
//  ScientificViewController.m
//  Full_Calculator_2
//
//  Created by MacBook Pro on 10/11/23.
//

#import "ScientificViewController.h"
#import "math.h"

@interface ScientificViewController ()

@end

@implementation ScientificViewController
int equalFlag1 = 0;
id answer1;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)equalButton:(id)sender {
    NSString *text = self.label.text;
    NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@"+-*/%"];
    
    NSArray *arr = [_label.text componentsSeparatedByCharactersInSet:separatorSet];

    // Find the range of the first character from the separator set
    NSRange range = [text rangeOfCharacterFromSet:separatorSet];

    if (range.location != NSNotFound) {
//        Found!!!!!!!
        // Extract the operator from the string
        char operator = [text characterAtIndex:range.location];
        
        double value1 = [arr[0] doubleValue];
        double value2 = [arr[1] doubleValue];
        switch (operator) {
            case '+':
                answer1 = @(value1+value2);
                _label.text = [NSString stringWithFormat:@"%@", answer1];
                break;
            case '-':
                answer1 = @(value1-value2);
                _label.text = [NSString stringWithFormat:@"%@", answer1];
                break;
            case '*':
                answer1 = @(value1*value2);
                _label.text = [NSString stringWithFormat:@"%@", answer1];
                break;
            case '/':
                answer1 = @(value1/value2);
                _label.text = [NSString stringWithFormat:@"%@", answer1];
                break;
            case '%':
                answer1 = @(fmod(value1, value2));
                _label.text = [NSString stringWithFormat:@"%@", answer1];
                break;

            default:
                break;
            }
        
        if ([arr[0] isEqualToString:@"π"] || [arr[1] isEqualToString:@"π"]) {
            if ([arr[0] isEqualToString:@"π"]) {
                value1 = M_PI;
            } else  value2 = M_PI;
            switch (operator) {
                case '+':
                    answer1 = @(value1+value2);
                    _label.text = [NSString stringWithFormat:@"%@", answer1];
                    break;
                case '-':
                    answer1 = @(value1-value2);
                    _label.text = [NSString stringWithFormat:@"%@", answer1];
                    break;
                case '*':
                    answer1 = @(value1*value2);
                    _label.text = [NSString stringWithFormat:@"%@", answer1];
                    break;
                case '/':
                    answer1 = @(value1/value2);
                    _label.text = [NSString stringWithFormat:@"%@", answer1];
                    break;
                case '%':
                    answer1 = @(fmod(value1, value2));
                    _label.text = [NSString stringWithFormat:@"%@", answer1];
                    break;

                default:
                    break;
                }
        }
    }
    
//    For Scientifc

    if ([text hasPrefix:@"sin"]) {
        text = [text substringFromIndex:[@"sin" length]];
        NSInteger angleInDegree = [text intValue];
        // Convert degrees to radians because the sin function in C uses radians
        // M_PI represents the value of pi
        double angleInRadians = angleInDegree * M_PI / 180.0;
        
        // Calculate sine value using the sin function
        double sineValue = sin(angleInRadians);
        
        _label.text = [NSString stringWithFormat:@"%f", sineValue];
        
    } else if ([text hasPrefix:@"cos"]){
        text = [text substringFromIndex:[@"cos" length]];
        NSInteger angleInDegree = [text intValue];
        
        double angleInRadians = angleInDegree * M_PI / 180.0;
        
        double sineValue = cos(angleInRadians);
        
        _label.text = [NSString stringWithFormat:@"%f", sineValue];
        
    } else if([text hasPrefix:@"tan"]){
        text = [text substringFromIndex:[@"tan" length]];
        NSInteger angleInDegree = [text intValue];
        
        double angleInRadians = angleInDegree * M_PI / 180.0;
        
        double sineValue = tan(angleInRadians);
        
        _label.text = [NSString stringWithFormat:@"%f", sineValue];
        
    } else if([text hasPrefix:@"log"]){
        text = [text substringFromIndex:[@"log" length]];
        double logValue = [text doubleValue];
    
        _label.text = [NSString stringWithFormat:@"%f", log10(logValue)];
        
    }else if([text hasPrefix:@"√"]){
        text = [text substringFromIndex:[@"√" length]];
        double sqValue = [text doubleValue];
    
        _label.text = [NSString stringWithFormat:@"%f", sqrt(sqValue)];
   
    } else if([text containsString:@"^"]){
        NSArray *arrPow = [_label.text componentsSeparatedByString:@"^"];
        double fistElement = [arrPow[0] doubleValue];
        double secondElement = [arrPow[1] doubleValue];
        NSString *ans = [NSString stringWithFormat:@"%f", pow(fistElement, secondElement)];
        self.label.text = ans;
        
    } else if([text hasSuffix:@"!"]){
        double count = [text doubleValue];
        if (count < 0) {
            self.label.text = @"nan";
            
        } else if(count == 1 || count == 0){
            self.label.text = @"1";
            
        } else if( count == (int)count ){
            double result = 1;
            while (count>0) {
                result = result * count;
                count -= 1;
            }
            self.label.text = [NSString stringWithFormat:@"%f", result];
            
        } else  self.label.text = @"nan";
        
    }
    
    
    equalFlag1 = 1;

}

- (IBAction)zeroButton:(id)sender {
    [self func:[self.zero.titleLabel text]];
}

- (IBAction)dotButton:(id)sender {
    NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@"+-*/%"];
    NSArray *arr = [_label.text componentsSeparatedByCharactersInSet:separatorSet];

    // Check if the last operand already contains a dot
    if (arr.count > 0) {
        NSString *lastOperand = [arr lastObject];
        if (![lastOperand containsString:@"."]) {
            // No dot found in the last operand, so it's safe to add a dot
            [self func:[self.dot.titleLabel text]];
        }
    } else {
        // If there are no operands yet, it's safe to add a dot
        [self func:[self.dot.titleLabel text]];
    }
}

- (IBAction)divideButton:(id)sender {
    [self opertor:[self.divide.titleLabel text]];
}

- (IBAction)threeButton:(id)sender {
    [self func:[self.three.titleLabel text]];
}

- (IBAction)twoButton:(id)sender {
    [self func:[self.two.titleLabel text]];
}

- (IBAction)oneButton:(id)sender {
    [self func:[self.one.titleLabel text]];
}

- (IBAction)piButton:(id)sender {
    self.label.text = [self.label.text stringByAppendingString:@"π"];
}

- (IBAction)multiplyButton:(id)sender {
    [self opertor:[self.multiply.titleLabel text]];
}

- (IBAction)sixButton:(id)sender {
    [self func:[self.six.titleLabel text]];
}

- (IBAction)fiveButton:(id)sender {
    [self func:[self.five.titleLabel text]];
}

- (IBAction)fourButton:(id)sender {
    [self func:[self.four.titleLabel text]];
}

- (IBAction)factorialButton:(id)sender {
    self.label.text = [self.label.text stringByAppendingString:@"!"];
}

- (IBAction)subtractButton:(id)sender {
    [self opertor:[self.subtract.titleLabel text]];
}

- (IBAction)nineButton:(id)sender {
    [self func:[self.nine.titleLabel text]];
}

- (IBAction)eightButton:(id)sender {
    [self func:[self.eight.titleLabel text]];
}

- (IBAction)sevenButton:(id)sender {
    [self func:[self.seven.titleLabel text]];
}

- (IBAction)powerButton:(id)sender {
    self.label.text = [self.label.text stringByAppendingString:@"^"];
}

- (IBAction)addButton:(id)sender {
    [self opertor:[self.add.titleLabel text]];
}

- (IBAction)modulusButton:(id)sender {
    [self opertor:[self.modulus.titleLabel text]];
}

- (IBAction)cutButton:(id)sender {
    NSString *str = _label.text;
    NSInteger length = str.length;
    if (length>0) {
        _label.text = [str substringToIndex: length-1];
    }
}

- (IBAction)clearButton:(id)sender {
    _label.text = @"";
}

- (IBAction)inverseButton:(id)sender {
    double myValue = [self.label.text doubleValue];
    NSString *mystr = [NSString stringWithFormat:@"%f", 1/myValue];
    self.label.text = mystr;
}

- (IBAction)tanButton:(id)sender {
    _label.text = [self.tan.titleLabel text];
}

- (IBAction)cosButton:(id)sender {
    _label.text = [self.cos.titleLabel text];
}

- (IBAction)sinButton:(id)sender {
    _label.text = [self.sin.titleLabel text];
}

- (IBAction)logButton:(id)sender{
    _label.text = [self.log.titleLabel text];
}

- (IBAction)sqRootButton:(id)sender {
    _label.text = @"√";
    equalFlag1 = 0;
}

- (void) func:(NSString *)a{
    
    if (equalFlag1 == 1) {
        self.label.text = @"";
        equalFlag1 = 0;
    }
        
    self.label.text = [self.label.text stringByAppendingString:a];
    
}

-(void) opertor:(NSString *)str{
    [self func:str];
}
@end
