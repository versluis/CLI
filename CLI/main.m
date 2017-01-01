//
//  main.m
//  CLI
//
//  Created by Jay Versluis on 30/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Input.h"
#import "Output.h"
#import "Runtime.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // NSLog(@"Hello, World!");
        
        /*
        // prompt user for some input
        [Output printMessage:@"\n\nType something:\n>"];
        
        // get the user's input
        NSString *userInput = [Input getUserInput];
        
        // print the user's input
        NSString *message = [NSString stringWithFormat:@"\nYou typed: %@\n\n", userInput];
        [Output printMessage:message];
        */
        
        Runtime *runtime = [[Runtime alloc]init];
        [runtime runGame];
        
    }
    return 0;
}
