//
//  ApplePaymentServie.m
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "ApplePaymentServie.h"

@implementation ApplePaymentServie
-(void)processPaymentAmount:(NSInteger)processedPay;
{
    NSLog(@"Apple consumed %lu",processedPay);
    
}
-(BOOL)canProccessPayment;
{
    if ((arc4random_uniform(1)+0)==0){
        return NO;
    }else{
        return YES;
    }
}
@end
