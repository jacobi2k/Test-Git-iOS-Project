//
//  ViewController.m
//  Counter
//
//  Created by jacoblanger on 2014-12-26.
//  Copyright (c) 2014 Jacob Langer. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int answerForFactorial = [self factorialOfInteger:3];
    NSLog(@"%i", answerForFactorial);
}

-(void)printAllWholeNumbersBelow:(int)number
{
    if (number > 0)
    {
        for (int i = number; i > 0; i--)
        {
            NSLog(@"%i",i);
        }
    }
}

-(void)printWholeNumbersInBetweenFirstInteger:(int)firstInteger andsecondInteger:(int)secondInteger
{
    if (firstInteger == secondInteger)
    {
        NSLog(@"The numbers are equal!");
    }
    else if (firstInteger > secondInteger)
    {
        for (int i = firstInteger; i <= secondInteger; i --)
        {
            NSLog(@"%i",i);
        }
    }
    else
    {
        for (int i = secondInteger; i >= firstInteger; i--)
        {
            NSLog(@"%i", i);
        }
    }
    
}

-(int)factorialOfInteger:(int)number
{
    int answer = number;
    for (int i = number; i > 1; i --)
    {
        answer = answer * (i-1);
    }
    return answer;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
