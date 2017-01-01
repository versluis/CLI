//
//  Output.m
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import "Output.h"

@implementation Output

+ (void)printMessage:(NSString *)message {
    
    message = [NSString stringWithFormat:@"%@", message];
    
    // print this to the console
    NSData *data = [message dataUsingEncoding:NSUTF8StringEncoding];
    NSFileHandle *handle = [NSFileHandle fileHandleWithStandardOutput];
    [handle writeData:data];
}

@end
