//
//  Room.h
//  CLI
//
//  Created by Jay Versluis on 31/12/2016.
//  Copyright © 2016 Pinkstone Pictures LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Room : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *roomDescription;

@property int north;
@property int south;
@property int east;
@property int west;

@property (nonatomic, strong) NSArray *items;

@end
