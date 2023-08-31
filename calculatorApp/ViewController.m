//
//  ViewController.m
//  calculatorApp
//
//  Created by ayman on 22/08/2023.
//

#import "ViewController.h"

@interface ViewController (){
    double num1;
    double num2 ;
    
    NSString *operator;
    double result;
    NSString *theComboundNum;

    
}
@property (weak, nonatomic) IBOutlet UILabel *Result;

@end

@implementation ViewController
-(void)setlabelResult:(NSString*)theComboundNum{
    _Result.text=theComboundNum;
}
-(void)num1Save{
    num1=[theComboundNum doubleValue];
    theComboundNum=@"";
}
-(void)showAnswer{
    
    _Result.text=[NSString stringWithFormat:@"%f",result];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    num1=0;
    num2=0;
    result=0.0;
    theComboundNum=@"";
    operator=@"";
    result = 0;
    // Do any additional setup after loading the view.
}
- (IBAction)NumberEntered:(id)sender {
    
    switch ([sender tag]) {
        case 0:
            theComboundNum=[theComboundNum stringByAppendingString:@"0"];
            
            break;
        case 1:
            theComboundNum=[theComboundNum stringByAppendingString:@"1"];
            break;
        case 2:
            theComboundNum=[theComboundNum stringByAppendingString:@"2"];
            break;
        case 3:
            theComboundNum=[theComboundNum stringByAppendingString:@"3"];
            break;
        case 4:
            theComboundNum=[theComboundNum stringByAppendingString:@"4"];
            break;
        case 5:
            theComboundNum=[theComboundNum stringByAppendingString:@"5"];
            break;
        case 6:
            theComboundNum=[theComboundNum stringByAppendingString:@"6"];
            break;
        case 7:
            theComboundNum=[theComboundNum stringByAppendingString:@"7"];
            break;
        case 8:
            theComboundNum=[theComboundNum stringByAppendingString:@"8"];
            break;
        case 9:
            theComboundNum=[theComboundNum stringByAppendingString:@"9"];
            break;
            
        case 10 :
            theComboundNum=[theComboundNum stringByAppendingString:@"."];
            break;

    }
    [self setlabelResult:theComboundNum];
}
- (IBAction)Operation:(id)sender {

    switch ([sender tag]) {
        case 0:
            [self num1Save];
           // theComboundNum=[theComboundNum stringByAppendingString:@"/"];
            operator=@"/";
            break;
        case 1:
         
            [self num1Save];
           // theComboundNum=[theComboundNum stringByAppendingString:@"*"];
            operator=@"*";
            break;
        case 2:
            [self num1Save];
          //  theComboundNum=[theComboundNum stringByAppendingString:@"-"];
            operator=@"-";
            break;
        case 3:
            [self num1Save];
           // theComboundNum=[theComboundNum stringByAppendingString:@"+"];
            operator=@"+";
          
            
            break;
        case 4:
            
            num2=[theComboundNum doubleValue];
            if([operator isEqualToString:@"+"]){
                if(num1==0){
                    result+=num2;
                }
                else{
                    result=num1+num2;
                }
            }
            else if ([operator isEqualToString:@"-"]){
                if(num1==0){
                    result-=num2;
                }
                else{
                    result=num1-num2;
                }
            }
            else if ([operator isEqualToString:@"*"]){
                if(num1==0){
                    result*=num2;
                }
                else{
                    result=num1*num2;
                }
            }
            else if ([operator isEqualToString:@"%"]){
                if(num1==0){
                    result=((int)result%(int)num2);
                }
                else{
                   // result=num1num2;
                }
            }
            else {
                if(num2==0){
                    _Result.text=@"Cant devide by 0";
                    
                }
                else{
                    if(num1==0){
                        result=(double)result/(double)num2;
                    }
                    else{
                        result=(double)num1/(double)num2;
                    }
                   
                }
                
            }
            [self showAnswer];
            num1=0;
            num2=0;
            theComboundNum=@"";
   
            break;
            
        case 5:
            _Result.text=0;
            num1=0;
            num2=0;
            result=0;
            theComboundNum=@"0";
            break;
        case 6:
            [self num1Save];
            //theComboundNum=[theComboundNum stringByAppendingString:@"%"];
            operator=@"%";
            break;
        
    }
}


@end
