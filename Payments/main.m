//
//  main.m
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "PriceGenerator.h"
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "ApplePaymentServie.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        UserInput *inputString =[UserInput new];
        PriceGenerator *priceCharged=[PriceGenerator new];
        StripePaymentService *stripe=[StripePaymentService new];
        AmazonPaymentService *amazon=[AmazonPaymentService new];
        PaypalPaymentService *paypal =[PaypalPaymentService new];
        ApplePaymentServie *apple=[ApplePaymentServie new];

            int randomPricedCharge = [priceCharged randomPrice];
       
        NSLog(@"Thank you for shoppingat Acme.com Your total today is %lu. Please select your payment method : 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", (unsigned long)[priceCharged randomPrice]);
        
        NSString *takingString =[inputString parsedString];
        
        PaymentGateway *money=[PaymentGateway new];
        
        money.delegate=stripe;
        money.delegate=amazon;
        money.delegate=paypal;
        money.delegate=apple;
        
        NSLog(@"%@",takingString);
        switch ([takingString intValue]) {
            case 1:
                money.delegate=paypal;
                break;
                case 2:
                money.delegate=stripe;
            
                break;
                case 3:
                money.delegate=amazon;
                break;
                
               case 4:
                money.delegate=apple;
                break;
                
                
                default:
                NSLog(@"You're Broke");
                break;
        }
    [money processPaymentAmount:randomPricedCharge];
    }
    return 0;
}
