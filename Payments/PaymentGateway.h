//
//  PaymentGateway.h
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PaymentGateway;
@protocol PaymentGatewayDelegate <NSObject>
-(BOOL)canProccessPayment;

-(void)processPaymentAmount:(NSInteger)processedPay;
@end

@interface PaymentGateway : NSObject
-(void)processPaymentAmount:(NSInteger)process;
@property (weak)id <PaymentGatewayDelegate> delegate;

@end
