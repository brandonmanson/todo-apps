//
//  ToDoTableViewController.h
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ToDo.h"
#import "NewToDoViewController.h"
#import "UpdateToDoViewController.h"

@interface ToDoTableViewController : UITableViewController <NewToDoDelegate, UpdateToDoDelegate>

@property (strong, nonatomic) NSMutableArray *todos;

@end
