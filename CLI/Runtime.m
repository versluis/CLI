//
//  Runtime.m
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import "Runtime.h"
#import "Input.h"
#import "Output.h"

@implementation Runtime

+ (void)runGame {
    
    // the main routine that lets us use the game
    
    // prompt user for some input
    [Output printMessage:@"\n\nType something:\n>"];
    
    // get the user's input
    NSString *userInput = [Input getUserInput];
    
    // print the user's input
    NSString *message = [NSString stringWithFormat:@"\nYou typed: %@\n\n", userInput];
    [Output printMessage:message];
}



@end
