//
//  ViewController.m
//  Full_Calculator_2
//
//  Created by MacBook Pro on 10/11/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int equalFlag = 0;
id answer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (void)clearButton:(id)sender {
    _textLabel.text = @"";
}

- (void)cutButton:(id)sender{
    NSString *str = _textLabel.text;
    NSInteger length = str.length;
    if (length>0) {
        _textLabel.text = [str substringToIndex: length-1];
    }
}



- (IBAction)zeroButton:(id)sender {
    [self func:[self.zero.titleLabel text]];
}

- (IBAction)oneButton:(id)sender {
    [self func:[self.one.titleLabel text]];
}

- (IBAction)twoButton:(id)sender {
    [self func:[self.two.titleLabel text]];
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

- (IBAction)sixButton:(id)sender {
    [self func:[self.six.titleLabel text]];
}

- (IBAction)fiveButton:(id)sender {
    [self func:[self.five.titleLabel text]];
}

- (IBAction)fourButton:(id)sender {
    [self func:[self.four.titleLabel text]];
}

- (IBAction)threeButton:(id)sender {
    [self func:[self.three.titleLabel text]];
}

- (IBAction)dotButton:(id)sender {
    NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@"+-*/%"];
    NSArray *arr = [_textLabel.text componentsSeparatedByCharactersInSet:separatorSet];

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

- (void)addButton:(id)sender{
    [self opertor:[self.add.titleLabel text]];
}
- (void)subtractButton:(id)sender{
    [self opertor:[self.subtract.titleLabel text]];
}
- (void)multiplyButton:(id)sender{
    [self opertor:[self.multiply.titleLabel text]];
}
- (void)divideButton:(id)sender{
    [self opertor:[self.divide.titleLabel text]];
}
- (void)modulusButton:(id)sender{
    [self opertor:[self.modulus.titleLabel text]];
}

- (void)equalButton:(id)sender{
        
        NSString *text = self.textLabel.text;
        NSCharacterSet *separatorSet = [NSCharacterSet characterSetWithCharactersInString:@"+-*/%"];
        
        NSArray *arr = [_textLabel.text componentsSeparatedByCharactersInSet:separatorSet];

        // Find the range of the first character from the separator set
        NSRange range = [text rangeOfCharacterFromSet:separatorSet];

        if (range.location != NSNotFound) {
            // Extract the operator from the string
            char operator = [text characterAtIndex:range.location];
            
            double value1 = [arr[0] doubleValue];
                double value2 = [arr[1] doubleValue];
                
                switch (operator) {
                    case '+':
                        answer = @(value1+value2);
                        _textLabel.text = [NSString stringWithFormat:@"%@", answer];
                        break;
                    case '-':
                        answer = @(value1-value2);
                        _textLabel.text = [NSString stringWithFormat:@"%@", answer];
                        break;
                    case '*':
                        answer = @(value1*value2);
                        _textLabel.text = [NSString stringWithFormat:@"%@", answer];
                        break;
                    case '/':
                        answer = @(value1/value2);
                        _textLabel.text = [NSString stringWithFormat:@"%@", answer];
                        break;
                    case '%':
                        answer = @(fmod(value1, value2));
                        _textLabel.text = [NSString stringWithFormat:@"%@", answer];
                        break;

                    default:
                        break;
                }
            
        }
        
        equalFlag = 1;
        
}

- (void) func:(NSString *)a{
    if (equalFlag == 1) {
        self.textLabel.text = @"";
        equalFlag = 0;
    }
    
    self.textLabel.text = [self.textLabel.text stringByAppendingString:a];
}

-(void) opertor:(NSString *)str{
    [self func:str];

}
@end
