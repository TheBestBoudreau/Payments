//
//  StripePaymentService.m
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService


-(void)processPaymentAmount:(NSInteger)processedPay;
{
    NSLog(@"money stripped by Stripe: %lu",processedPay);
    
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
