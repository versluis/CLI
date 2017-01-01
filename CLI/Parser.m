//
//  Parser.m
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import "Parser.h"

@implementation Parser

+ (NSArray *)parseSentence:(NSString *)sentence {
    
    // split sentence up into single words
    
    // for now, we'll use a single word as input
    NSArray *words = @[sentence];
    
    return words;
}

@end
