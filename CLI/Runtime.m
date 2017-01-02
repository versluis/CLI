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
#import "Data.h"
#import "Room.h"
#import "Parser.h"

@implementation Runtime

- (Data *)data {
    if (!_data) {
        _data = [[Data alloc]init];
    }
    return _data;
}

- (void)runGame {
    
    // print description of the first room
    [Output printMessage:@"\n\n"];
    [self printRoomTitle];
    
    // the main routine that lets us use the game
    // endless loop starts here
    
    self.handledInput = 0;
    for (int i = 1; i<10; i++) {
        
        
        // prompt user for some input
        [Output printMessage:@"\n>"];
        
        // get the user's input
        NSString *userInput = [Input getUserInput];
        
        // parse user input
        NSArray *userCommand = [Parser parseSentence:userInput];
        
        // figure out how to react
        for (NSArray *verbGroup in self.data.verbs) {
            
            // moving
            if ([verbGroup containsObject:@"north"]) {
                [self go:userCommand.firstObject];
            }
            
            // help
            if ([verbGroup containsObject:@"help"]) {
                [self help];
            }
        }
        
        if (!self.handledInput) {
            // if the verb doesn't exist, tell the user
            [Output printMessage:@"I don't know that word."];
            
        }
        
    }
}

- (void)setup {
    
    // set some initial properties
}

- (void)printRoomTitle {
    
    Room *currentRoom = [self.data.rooms objectAtIndex:self.data.currentRoom];
    [Output printMessage:currentRoom.title];
    [Output printMessage:@"\n"];
    [Output printMessage:currentRoom.roomDescription];
    
    // print items and characters here too
}

- (void)printRoomDescription {
    
    
}

- (void)go:(NSString *)direction {
    
    Room *currentRoom = [self.data.rooms objectAtIndex:self.data.currentRoom];
    
    // move the player into a new direction
    if ([direction isEqualToString:@"north"] || [direction isEqualToString:@"n"]) {
        
        if (currentRoom.north) {
            self.data.currentRoom = currentRoom.north;
            [self printRoomTitle];
        } else {
            [Output printMessage:@"I'm afraid you can't go that way."];
        }
    }
    
    if ([direction isEqualToString:@"south"] || [direction isEqualToString:@"s"]) {
        
        if (currentRoom.south) {
            self.data.currentRoom = currentRoom.south;
            [self printRoomTitle];
        } else {
            [Output printMessage:@"I'm afraid you can't go that way."];
        }
    }
    
    if ([direction isEqualToString:@"east"] || [direction isEqualToString:@"e"]) {
        
        if (currentRoom.east) {
            self.data.currentRoom = currentRoom.east;
            [self printRoomTitle];
        } else {
            [Output printMessage:@"I'm afraid you can't go that way."];
        }
    }
    
    if ([direction isEqualToString:@"west"] || [direction isEqualToString:@"w"]) {
        
        if (currentRoom.west) {
            self.data.currentRoom = currentRoom.west;
            [self printRoomTitle];
        } else {
            [Output printMessage:@"I'm afraid you can't go that way."];
        }
    }
    
    self.handledInput = 1;
}

- (void)help {
    
    NSString *message = @"I understand the following verbs:\nnorth, south, east, west, n, s, e, w and help.";
    [Output printMessage:message];
    self.handledInput = 1;
}
@end
