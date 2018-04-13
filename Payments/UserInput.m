//
//  UserInput.m
//  Payments
//
//  Created by Tyler Boudreau on 2018-04-13.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

-(NSString *)parsedString;
{
    char intAnswer[200];
    fgets(intAnswer,200,stdin);
    
    NSString *inpString = [NSString stringWithCString:intAnswer encoding:NSUTF8StringEncoding];
    
    inpString =[inpString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return inpString;
}
@end
