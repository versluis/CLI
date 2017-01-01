//
//  Runtime.h
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Input.h"
#import "Output.h"
#import "Data.h"
#import "Room.h"

@interface Runtime : NSObject

- (void)runGame;
- (void)printRoomTitle;

@property (nonatomic, strong) Data *data;

@end
