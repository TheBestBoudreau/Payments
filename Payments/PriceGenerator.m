//
//  PriceGenerator.m
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "PriceGenerator.h"

@implementation PriceGenerator
-(NSInteger)randomPrice
{
    NSInteger random=arc4random_uniform(901)+100;
    return _price=random;
}
@end
