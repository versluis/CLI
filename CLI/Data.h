//
//  Data.h
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Room.h"
#import "Item.h"

@interface Data : NSObject

@property (nonatomic, strong) NSArray *verbs;
@property (nonatomic, strong) NSArray *nouns;
@property (nonatomic, strong) NSArray *rooms;
@property (nonatomic, strong) NSArray *items;

@property int currentRoom;

@end
