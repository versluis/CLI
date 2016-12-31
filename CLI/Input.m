//
//  Input.m
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import "Input.h"

@implementation Input

+ (NSString *)getUserInput {
    
    // grab input from the command line
    NSFileHandle *handle = [NSFileHandle fileHandleWithStandardInput];
    NSData *data = handle.availableData;
    NSString *input = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    
    // remove the last character from our string (i.e. the "new line cahracter")
    NSCharacterSet *set = [NSCharacterSet newlineCharacterSet];
    NSString *userInput = [input stringByTrimmingCharactersInSet:set];

    return userInput;
}

@end
