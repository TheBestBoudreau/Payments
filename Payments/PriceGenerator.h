//
//  PriceGenerator.h
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PriceGenerator : NSObject

@property (nonatomic)NSInteger price;
-(NSInteger)randomPrice;
@end
