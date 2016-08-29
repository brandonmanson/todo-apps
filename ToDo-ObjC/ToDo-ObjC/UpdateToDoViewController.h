//
//  UpdateToDoViewController.h
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"

@protocol UpdateToDoDelegate <NSObject>

-(void)updateToDo:(ToDo *)toDo atIndex:(NSIndexPath *)indexPath;

@end

@interface UpdateToDoViewController : UIViewController

@property (strong, nonatomic) ToDo *toDo;
@property (strong, nonatomic) NSIndexPath *indexPath;
@property (strong, nonatomic) id <UpdateToDoDelegate>delegate;

@end
