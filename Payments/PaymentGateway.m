//
//  PaymentGateway.m
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
-(void)processPaymentAmount:(NSInteger)process;
{
    
    
    if([self.delegate canProccessPayment]==YES){ [self.delegate processPaymentAmount:process];
    }else{
        NSLog(@"Not accepted");
    }
    
    

    
}



@end
