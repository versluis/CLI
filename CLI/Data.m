//
//  Data.m
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import "Data.h"

@implementation Data

- (NSArray *)rooms {
    
    if (!_rooms) {
        
        _rooms = [self generateRooms].copy;
        self.currentRoom = 1;
    }
    return _rooms;
}

- (NSMutableArray*)generateRooms {
    
    NSMutableArray *rooms = [[NSMutableArray alloc]init];
    
    // room 0
    Room *room0 = [[Room alloc]init];
    room0.title = @"This room does not exist.";
    [rooms addObject:room0];
    
    // room 1
    Room *room1 = [[Room alloc]init];
    room1.south = 2;
    room1.title = @"Bedroom";
    room1.roomDescription = @"You are in what appears to be a hostpial room.";
    [rooms addObject:room1];
    
    // room 2
    Room *room2 = [[Room alloc]init];
    room2.north = 1;
    room2.east = 4;
    room2.west = 3;
    room2.title = @"Corridor";
    room2.roomDescription = @"You are in a long winded corridor.\nYou can see doors to the east and west.";
    [rooms addObject:room2];
    
    // room 3
    Room *room3 = [[Room alloc]init];
    room3.east = 2;
    room3.title = @"Office";
    room3.roomDescription = @"This appears to be an abandonded office of sorts.";
    [rooms addObject:room3];
    
    // room 4
    Room *room4 = [[Room alloc]init];
    room4.west = 2;
    room4.title = @"Elevator";
    room4.roomDescription = @"You're in a small elevator. It can take you places.";
    [rooms addObject:room4];
    
    return rooms;
}

- (NSArray *)verbs {
    
    if (!_verbs) {
        _verbs = [self generateVerbs];
    }
    return _verbs;
}

- (NSMutableArray *)generateVerbs {
    
    NSMutableArray *verbs = [[NSMutableArray alloc]init];
    
    // moving
    NSArray *moving = @[@"north", @"south", @"east", @"west", @"n", @"s", @"e", @"w"];
    [verbs addObject:moving];
    
    // help
    NSArray *help = @[@"help"];
    [verbs addObject:help];
    
    return verbs;
}


@end
