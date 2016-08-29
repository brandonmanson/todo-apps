//
//  ToDoTableViewController.m
//  ToDo-ObjC
//
//  Created by Brandon Manson on 8/29/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ToDoTableViewController.h"

@interface ToDoTableViewController ()

@end

@implementation ToDoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (_todos == nil) {
        _todos = [[NSMutableArray alloc] init];
    }

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Delegate Methods

- (void)addToDoAndRefresh:(ToDo *)toDo {
    [_todos addObject:toDo];
    [self.tableView reloadData];
}

- (void)updateToDo:(ToDo *)toDo atIndex:(NSIndexPath *)indexPath {
    [_todos replaceObjectAtIndex:indexPath.row withObject:toDo];
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_todos count];
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    ToDo *toDoInCell = [_todos objectAtIndex:indexPath.row];
    cell.textLabel.text = toDoInCell.name;
    if (toDoInCell.isComplete) {
        cell.backgroundColor = [UIColor colorWithRed:60/255.0 green:179/255.0 blue:113/255.0 alpha:1.0];
        cell.textLabel.textColor = [UIColor whiteColor];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    ToDo *toDoInCell = [_todos objectAtIndex:indexPath.row];
    cell.textLabel.text = toDoInCell.name;
    
    return cell;
}


// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_todos removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([segue.identifier isEqualToString:@"addNewToDoSegue"]) {
        NewToDoViewController *vc = [segue destinationViewController];
        vc.delegate = self;
    } else {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        ToDo *selectedToDo = [_todos objectAtIndex:indexPath.row];
        UpdateToDoViewController *vc = [segue destinationViewController];
        vc.indexPath = indexPath;
        vc.toDo = selectedToDo;
        vc.delegate = self;
    }
}

@end
