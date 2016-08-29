//
//  ToDo.h
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDo : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) BOOL isComplete;

-(id)initWithName:(NSString *)name;
+(id)initWithName:(NSString *)name;

@end
