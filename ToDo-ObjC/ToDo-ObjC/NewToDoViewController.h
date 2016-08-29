//
//  NewToDoViewController.h
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"


@protocol NewToDoDelegate <NSObject>

-(void)addToDoAndRefresh:(ToDo *)toDo;

@end

@interface NewToDoViewController : UIViewController

@property (strong, nonatomic) ToDo *toDo;
@property (strong, nonatomic) id <NewToDoDelegate>delegate;

@end
