//
//  ToDo.m
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ToDo.h"

@implementation ToDo

-(id)initWithName:(NSString *)name {
    self = [super init];
    
    if (self) {
        _name = name;
        _isComplete = NO;
    }
    
    return self;
}

+(id)initWithName:(NSString *)name {
    return [[super alloc] initWithName:name];
}


@end
